class UsersController < ApplicationController
  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id 
      redirect_to dashboards
    else
      @user
      render 'sessions/new'
    end
  end
  
  def show
  
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
  
end
