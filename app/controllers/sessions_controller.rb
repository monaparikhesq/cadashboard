class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to current_user, notice: "Welcome to Code Academy Dashboard! Please fill in your blog & github link by clicking the 'Settings' tab."
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Goodbye!"
  end

end
