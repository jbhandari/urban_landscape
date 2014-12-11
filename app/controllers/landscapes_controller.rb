class LandscapesController < ApplicationController
  def create
    @landscape = Landscape.new(landscape_params)
    save_landscape
  end

  private

  def landscape_params
    params.require(:landscape).permit(
      :caption,
      :description,
      :image
    )
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
