class EnginesController < ApplicationController
    before_action :check_for_login

    def index
      @engines = Engine.all
    end
  
    def new
      @engine = Engine.new
    end
  
    def create
      engine = Engine.create engine_params
      if params[:file].present?
          req = Cloudinary::Uploader.upload(params[:file])
          engine.image = req["public_id"]
          engine.save
      end
      redirect_to engine
    end
  
    def edit
      @engine = Engine.find params[:id]
    end
  
    def update
      engine = Engine.find params[:id]
      if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        engine.image = req["public_id"]
      end
      engine.update_attributes engine_params
      engine.save
      redirect_to engine_params
    end
  
    def show
      @engine = Engine.find params[:id]
    end
  
    def destroy
      engine = Engine.find params[:id]
      engine.destroy
      redirect_to engine
    end
  
    private
    def engine_params
      params.require(:engine).permit(:name, :capacity, :hp, :torque, :mods, :image)
    end
end
