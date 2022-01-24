class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(find_params)
    if @car.save
      redirect_to cars_path
    else
      render :new
    end
  end

  private

  def find_params
    params.require(:car).permit(:model, :plate, :brand, :price, :year, :type, :color)
  end
end
