class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @access_token = params[:auth_token][:access_token]
    response = HTTParty.get("https://www.googleapis.com/plus/v1/people/me?access_token=" + @access_token)
    user_id = response["id"]
    session[:user_id] = "adsfaxsdf"
    binding.pry
    #User.create(gpid: user_id) if !User.find_by(gpid: user_id)
  end

  def destroy
    # raise params.inspect
  end

  def new
  end

end