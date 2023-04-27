class ManufacturersController < ApplicationController
  before_action :check_for_login

  def index
    @manufacturers = Manufacturer.all
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    manufacturer = Manufacturer.create manufacturer_params
    if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        manufacturer.image = req["public_id"]
        manufacturer.save
    end
    redirect_to manufacturer
  end

  def edit
    @manufacturer = Manufacturer.find params[:id]
  end

  def update
    manufacturer = Manufacturer.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      manufacturer.image = req["public_id"]
    end
    manufacturer.update_attributes manufacturer_params
    manufacturer.save
    redirect_to manufacturer_params
  end

  def show
    @manufacturer = Manufacturer.find params[:id]
  end

  def destroy
    manufacturer = Manufacturer.find params[:id]
    manufacturer.destroy
    redirect_to manufacturer
  end

  private
  def manufacturer_params
    params.require(:manufacturer).permit(:name, :image, :founded, :location)
  end
end
