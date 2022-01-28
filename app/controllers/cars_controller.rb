class CarsController < ApplicationController


  def index
    # authorize Car
    @cars = policy_scope(Car).order(created_at: :desc)
  end

  def show
    @car = Car.find(params[:id])
    # if params[:id].is_a?(Integer)
    #   @car = Car.find(params[:id])
    #   @booking = Booking.new
    #   authorize @car
    # elsif params[:id] == "mycars"
    #   @cars = policy_scope(Car).order(created_at: :desc)
    #   authorize @cars
    #   render template: "cars/mycars"
    # end

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

  def edit
    @car = Car.find(params[:id])
    authorize @car
  end

  def update
    @car = Car.find(params[:id])
    authorize @car
    @car.update(find_params)
    if @car.save
      redirect_to cars_path(@car)
    else
      render :edit
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path
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
      photos: []
    )
  end
end
