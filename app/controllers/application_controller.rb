class ApplicationController < ActionController::Base
    before_action :set_current_user
  
  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
    if @current_user
    @current_user_choice= Choice.find_by(user_id: @current_user.name,choice_id: session[:choice_id])
    end
  end
end
