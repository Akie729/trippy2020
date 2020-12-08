class TripsController < ApplicationController
  before_action :move_to_index, only: :new

  def index
    @trips = Trip.all.order(created_at: :desc)
  end

  def new
    @trip = TripTag.new
  end

  def create
    @trip = TripTag.new(trip_params)
    if @trip.valid?
      @trip.save
      redirect_to root_path
    else
      redirect_to :new
    end
  end

  def destroy
    trip = TripTag.find(params[:id])
    trip.destroy
    redirect_to root_path
  end

  def edit
    @trip = TripTag.find(params[:id])
  end

  def update
    @trip = TripTag.find(params[:id])
    if @trip.update(trip_params)
       redirect_to root_path
      else
        render :edit
      end
  end

  def show
    @trips = TripTag.find(params[:id])
  end


  private
  def trip_params
    params.require(:triptag).permit(:name, :title, :text, images: []).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
