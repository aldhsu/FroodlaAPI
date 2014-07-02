class DoodlesController < ApplicationController

  def create
    @doodle = Doodle.create(url: params[:image].tempfile )
    #ADD THIS WHEN GOOGLE LOGIN IS WOKRING
    #@user.doodles << @doodle
  end

  def new
    @prompt = Prompt.all.shuffle.first.question
    @doodle = Doodle.new

  end

  def show
    @doodle = Doodle.find(params[:id])
  end

  def index
    @doodles = Doodle.all
    raise
  end

  def destroy
    @doodles = Doodle.find(params[:id])
    @doodles.destroy
    redirect_to doodles_path
  end

  def guess
    @doodle = Doodle.all
  end


  private
  def doodle_params
    params.require(:doodle).permit(:user_id, :url, :prompt_id, :image)
  end
end
