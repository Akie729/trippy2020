class TripsController < ApplicationController
  before_action :move_to_index, only: :new
  protect_from_forgery :except => [:destroy]

  def index
    @trips = Trip.all.order(created_at: :desc)
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    trip = Trip.find(params[:id])
    trip.destroy
    redirect_to root_path
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(trip_params)
       redirect_to root_path
      else
        render :edit
      end
  end

  def show
    @trips = Trip.find(params[:id])
  end


  private
  def trip_params
    params.require(:trip).permit(:name, :title, :text, images: []).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
