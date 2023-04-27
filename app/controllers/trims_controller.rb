class TrimsController < ApplicationController
  before_action :check_for_login

  def new
    @trim = Trim.new
  end

  def create
    @current_user.trims.create trim_params
    redirect_to root_path
  end

  def edit
    @trim = Trim.find params[:id]
  end

  def update
    # @current_user.trims.update trim_params
    trim = Trim.find params[:id]
    trim.update trim_params
    redirect_to trim
  end

  def show
    @trim = Trim.find params[:id]
  end

  def destroy
    @current_user.trims.destroy trim_params
    redirect_to root_path
  end

  private
  def trim_params
    params.require(:trim).permit(:name)
  end
end
