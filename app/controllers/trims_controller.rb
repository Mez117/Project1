class TrimsController < ApplicationController
  before_action :check_for_login

  def index
    @trims = Trim.all
  end

  def new
    # car = Car.find(params[:id])
    # trim = car.trim
    @trim = Trim.new
  end

  def create
    @car = Car.find(params[:car_id])
    @trim = @car.trims.build(trim_params)
    # trim = Trim.create trim_params
    if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        @trim.image = req["public_id"]
        @trim.save
    end
    redirect_to new_car_trim_path(@car)
  end

  def edit
    @trim = Trim.find params[:id]
  end

  def update
    @car = Car.find(params[:car_id])
    @trim = @car.trims.build(trim_params)
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      trim.image = req["public_id"]
    end
    trim.update_attributes trim_params
    trim.save
    redirect_to trim_params
  end

  def show
    # car = Car.find(params[:id])
    # @trim = car.trims.find(params[:id])
    @trim = Trim.find params[:id]
  end

  def destroy
    trim = Trim.find params[:id]
    trim.destroy
    redirect_to root_path
  end

  private
  def trim_params
    params.require(:trim).permit(:color, :wheel_size, :wheel_mat, :interior, :sport, :int_color, :image, :features)
  end
end
