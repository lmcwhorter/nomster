class PlacesController < ApplicationController

  def index
#    @places = Place.all Swapped out for the line below to introduce pagination
    @places = Place.paginate(:page => params[:page], :per_page => 10)
  end

end
