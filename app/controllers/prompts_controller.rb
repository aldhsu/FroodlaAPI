class PromptsController < ApplicationController
  def index
    session[:user_id] = 'asdfaskdjfsaf'
    raise
    @prompts = Prompt.all
  end

  def delete
  end
end
