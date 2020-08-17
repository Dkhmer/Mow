class BookingsController < ApplicationController

def new

end

end
  def create
    @booking = Booking.new
    @animal = Animal.find(params[:animal_id])
    @booking.animal_id = @animal.id
    @booking.save
    redirect_to animal_path(@animal)
  end
end
