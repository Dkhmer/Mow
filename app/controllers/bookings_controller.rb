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
    @booking.user = current_user
    if @booking.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  private

  def booking_params
     params.require(:booking).permit(:start_date, :end_date, :user_id, :animal_id)
  end

end
