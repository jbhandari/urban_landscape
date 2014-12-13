class LandscapesController < ApplicationController
  before_action :ensure_auth, if: :signed_out?

  def new
    @landscape = Landscape.new
  end

  def create
    @landscape = Landscape.new(landscape_params)
    continue_redirect("save")
  end

  def edit
    @landscape = find_landscape
  end

  def update
    @landscape = find_landscape
    @landscape.update(landscape_params)
    continue_redirect("save")
  end

  def destroy
    @landscape = find_landscape
    @landscape.destroy
    continue_redirect("destroy")
  end

  private

  def find_landscape
    current_user.landscapes.find(params[:id])
  end

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

  def continue_redirect(action)
    if @landscape.send("#{action}")
      flash[:notice] = "Successful"
      redirect_to root_path
    else
      flash[:notice] = "Unable to perform action"
      redirect_to root_path
    end
  end
end
