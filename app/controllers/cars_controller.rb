class CarsController < ApplicationController
  include Pundit
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show
  skip_before_action :authenticate_user!, only: :mycars


  def mycars
    @cars = Car.where(user_id: current_user.id)

    authorize @cars
  end

  def index
    # authorize Car
    @cars = policy_scope(Car).order(created_at: :desc)
  end

  def show
    # if params[:id].is_a?(Integer)
      @car = Car.find(params[:id])
       @booking = Booking.new
    #   authorize @car
    # elsif params[:id] == "mycars"
    #   @cars = policy_scope(Car).order(created_at: :desc)
       authorize @car
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
