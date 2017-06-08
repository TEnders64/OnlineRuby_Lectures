class UsersController < ApplicationController
  def create
    #registration handler
    user = User.new( user_params )
    if user.valid?
      user.save
      #session-ize & redirect
    else 
      flash[:errors] = user.errors.full_messages
      redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
