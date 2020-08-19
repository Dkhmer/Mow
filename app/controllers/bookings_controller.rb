class BookingsController < ApplicationController

  def new
    authorize @booking
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @animal = Animal.find(params[:animal_id])
    @booking.animal_id = @animal.id
    @booking.user = current_user
    authorize @booking
    if @booking.save
          redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
     params.require(:booking).permit(:start_date, :end_date, :user_id, :animal_id)
  end

end
