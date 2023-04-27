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
    car = @current_user.cars.create car_params
    if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        car.image = req["public_id"]
        car.save
    end
    redirect_to root_path
  end

  def edit
    @car = Car.find params[:id]
  end

  def update
    car = @current_user.cars.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      car.image = req["public_id"]
    end
    car.update_attributes car_params
    car.save
    redirect_to car_params
  end

  def show
    @car = Car.find params[:id]
  end

  def destroy
    car = @current_user.cars.find params[:id]
    car.destroy
    redirect_to root_path
  end

  private
  def car_params
    params.require(:car).permit(:name)
  end
end
