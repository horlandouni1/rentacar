class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @booking = Booking.new(booking_params)
    redirect_to cars_path
  end

  # Agregar user_id al booking
  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
