class SessionsController < ApplicationController
  def create
      @user = User.find_by_email(params[:email])
      if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect_to "/users/#{@user.id}", notice: 'logged in successfully'
      else
          flash[:errors] = ["Invalid email/password combination"]
          redirect_to "/"

  end

  def destroy
  end
end
