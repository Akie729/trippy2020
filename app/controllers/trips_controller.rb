class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
  end


  private

  def trip_params
    params.require(:trip).permit(:name, :title, :text, images: [])
  end

end
