class CarsController < ApplicationController
  before_action :check_for_login

  def index
    # @cars = Car.all
    @cars = @current_user.cars.all
  end

  def new
    @car = Car.new
  end

  def create
    @current_user.cars.create car_params
    redirect_to root_path
  end

  def edit
    @car = Car.find params[:id]
  end

  def update
    @current_user.cars.update car_params
    redirect_to car
  end

  def show
    @car = Car.find params[:id]
  end

  def destroy
    @current_user.cars.destroy car_params
    redirect_to root_path
  end

  private
  def car_params
    params.require(:car).permit(:name)
  end
end
