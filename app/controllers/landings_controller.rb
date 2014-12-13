class LandingsController < ApplicationController
  def index
    @landscapes = Landscape.all
  end
end
