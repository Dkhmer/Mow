class BookingsController < ApplicationController

  def new
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @animal = Animal.find(params[:animal_id])
    @booking.animal_id = @animal.id
    @booking.user_id = current_user
    if @booking.save
      redirect_to animal_path(@animal)
    else
      render :new
    end

    @animal.user = @user
    @booking.save
    raise
    redirect_to animal_path(@animal)
  end


  private

  def booking_params
     params.require(:booking).permit(:start_date, :end_date, :user_id, :animal_id)

  end

end
