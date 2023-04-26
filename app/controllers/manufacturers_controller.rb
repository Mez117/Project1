class ManufacturersController < ApplicationController
  before_action :check_for_login

  def index
    @manufacturers = Manufacturer.all
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @current_user.manufacturers.create manufacturer_params
    redirect_to root_path
  end

  def edit
    @manufacturer = Manufacturer.find params[:id]
  end

  def update
    @current_user.manufacturers.update manufacturer_params
    redirect_to manufacturer
  end

  def show
    @manufacturer = Manufacturer.find params[:id]
  end

  def destroy
    @current_user.manufacturers.destroy manufacturer_params
    redirect_to root_path
  end

  private
  def manufacturer_params
    params.require(:manufacturer).permit(:name)
  end
end
