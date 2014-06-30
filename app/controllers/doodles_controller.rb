class DoodlesController < ApplicationController
  def create
    @doodle = Doodle.create(doodle_params)
    redirect_to doodles_path
  end

  def new
    @doodle = Doodle.new
  end

  def show
    @doodle = Doodle.find(params[:id])
  end

  def index
    @doodles = Doodle.all
  end

  def destroy
    @doodles = Doodle.find(params[:id])
    @doodles.destroy
    redirect_to doodles_path
  end

  private
  def doodle_params
    params.require(:doodle).permit(:user_id, :url, :prompt_id)
  end
end
