class CarsController < ApplicationController

  def index
    @cars = policy_scope(Car).order(created_at: :desc)
  end

  def show
    @car = Car.find(params[:id])
    authorize @car
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
