class LandingsController < ApplicationController
  def show
    @landscapes = Landscape.all
    @landscape = Landscape.new
  end
end
