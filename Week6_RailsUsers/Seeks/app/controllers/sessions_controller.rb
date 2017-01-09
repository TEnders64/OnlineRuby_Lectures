class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:Email])
    if user && user.authenticate(params[:Password])
      session[:user_id] = user.id
      session[:username] = user.name
      redirect_to "/users/#{user.id}"
    else
      flash[:errors] = ["Invalid Email/Password Combination"]
      redirect_to "/sessions/new"
    end
  end

  def destroy
    reset_session
    redirect_to "/sessions/new"
  end
end
