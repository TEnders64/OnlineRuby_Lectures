class UsersController < ApplicationController
  def index
      if !session[:counter]
          session[:counter] = 0
      end
  end

  def create
      @user = User.new( user_params )
      if @user.save
          session[:user_id] = @user.id
          session[:counter] += 1
          redirect_to "/users/#{@user.id}" notice: 'successfully registered'
      else
          flash[:errors] = @user.errors.full_messages
          redirect_to "/"
      end
  end

  def show
      @user = User.find(params[:id])
  end

  private
  def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
