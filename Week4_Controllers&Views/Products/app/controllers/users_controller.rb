class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    user = User.new( user_params )
    if user.valid?
      user.save
      session[:user_id] = user.id
      redirect_to "/users"
    else
      flash[:errors] = user.errors.full_messages
      redirect_to "/"
    end
  end

  def show
  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
