class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def new

  end

  def create
    user = User.new( user_params )
    if user.valid?
      user.save
      session[:user_id] = user.id
      session[:username] = user.name
      redirect_to "/users/#{user.id}"
    else
      flash[:errors] = user.errors.full_messages
      redirect_to "/users/new"
    end
  end

  def edit

  end

  def update
    user = User.find(params[:id])
    if user
      user.update(name: params[:name], email: params[:email])
      session[:username] = user.name
    end
    redirect_to "/users/#{session[:user_id]}"
  end

  def destroy
    user = User.find(params[:id])
    if user
      user.destroy
      reset_session
    end
    redirect_to "/sessions/new"
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
