class LandingsController < ApplicationController
  def index
    @landscapes = Landscape.all.reverse_order
  end
end
