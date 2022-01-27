class CarsController < ApplicationController


  def index
    @cars = policy_scope(Car).order(created_at: :desc)
  end

  def show
    if params[:id].is_a?(Integer)
      @car = Car.find(params[:id])
      @booking = Booking.new
      authorize @car
    elsif params[:id] == "mycars"
      @cars = policy_scope(Car).order(created_at: :desc)
      authorize @cars
      render template: "cars/mycars"
    end

    # raise
  end

  def new
    @car = Car.new
    authorize @car
  end

  def create
    @car = Car.new(find_params)
    @car.user = current_user
    authorize @car
    if @car.save
      redirect_to cars_path(@cars)
    else
      render :new
    end
  end

  private

  def find_params
    params.require(:car).permit(
      :model,
      :plate,
      :brand,
      :price,
      :year,
      :car_type,
      :color,
      :used_id,
    )
  end
end
