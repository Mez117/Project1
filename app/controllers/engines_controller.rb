class EnginesController < ApplicationController
    before_action :check_for_login

    def index
      @engines = Engine.all
    end
  
    def new
      @engine = Engine.new
    end
  
    def create
      @current_user.engines.create engine_params
      redirect_to root_path
    end
  
    def edit
      @engine = Engine.find params[:id]
    end
  
    def update
      @current_user.engines.update engine_params
      redirect_to engine
    end
  
    def show
      @engine = Engine.find params[:id]
    end
  
    def destroy
      @current_user.engines.destroy engine_params
      redirect_to root_path
    end
  
    private
    def engine_params
      params.require(:engine).permit(:name)
    end
end
