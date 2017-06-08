class SessionsController < ApplicationController
  def new
    #log/reg view
  end

  def destroy
    #logout
  end

  def create
    #login
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      #session stuff
      #redirect
    else
      flash[:errors] = ["Email/Pass not valid"]
      redirect_to root_path
    end
    
  end
end
