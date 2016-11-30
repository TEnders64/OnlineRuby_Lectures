class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
    # user = User.new(name: params[:name], email: params[:email], password: params[:password], age: params[:age])
    user = User.new( user_params )
    if user.valid?
      user.save
      redirect_to "/"
    else
      flash[:errors] = user.errors.full_messages
      redirect_to "/users/new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :age, :password)
  end
end
