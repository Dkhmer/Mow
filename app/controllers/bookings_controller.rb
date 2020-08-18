class BookingsController < ApplicationController

  def new
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new
    @user = User.find(params[:user_id])
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @animal = Animal.find(params[:animal_id])
    @user = User.find(params[:user_id])
    @booking.animal_id = @animal.id
    @animal.user = @user
    @booking.save
    raise
    redirect_to animal_path(@animal)
  end

  private

  def booking_params
     params.require(:booking).permit(:user_id, :animal_id, :start_date, :end_date, :id)
  end

end
