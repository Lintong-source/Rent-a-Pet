class BookingsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def new
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @booking = @pet.bookings.create(booking_params)
    @booking.user = current_user



    if @booking.save
      redirect_to pet_path(@pet), notice: "Yay! You have successfully booked this pet!"
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:opening_date, :closing_date)
  end

end
