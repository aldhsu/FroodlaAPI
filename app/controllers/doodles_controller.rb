class DoodlesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    # File.open("#{Rails.root}/public/uploads/somefilename.png", 'wb') do |f|
    #   f.write(params[:image].read)
    # end
    @doodle = Doodle.create(params[:image])
    binding.pry
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
    params.require(:doodle).permit(:user_id, :url, :prompt_id, :image)
  end
end
