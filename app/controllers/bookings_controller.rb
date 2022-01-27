class BookingsController < ApplicationController
  before_action :authenticate_user!
  # before_action :skip_authorization, only: :index

  def index
    # Obtener los bookings de un usuario
    user = User.find params[:user_id]
    @bookings = policy_scope(user.bookings)

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    # @booking.car = Car.find(params[:car_id])
    @booking.save!
    authorize @booking
    redirect_to user_bookings_path(current_user)
    # cars_path
  end

  # Agregar user_id al booking
  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :car_id)
  end

end
