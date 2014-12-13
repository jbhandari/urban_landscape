class LandscapesController < ApplicationController
  before_action :ensure_auth, if: :signed_out?

  def new
    @landscape = Landscape.new
  end

  def create
    @landscape = Landscape.new(landscape_params)
    save_landscape
  end

  private

  def ensure_auth
    flash[:notice] = "You must be signed in to upload!"
    redirect_to sign_in_path
  end

  def landscape_params
    params.require(:landscape).permit(
      :caption,
      :description,
      :image
    ).merge(user_id: current_user.id)
  end

  def save_landscape
    if @landscape.save
      flash[:notice] = "Successfully uploaded image."
      redirect_to root_path
    else
      flash[:notice] = "Unsuccessful"
      redirect_to root_path
    end
  end
end
