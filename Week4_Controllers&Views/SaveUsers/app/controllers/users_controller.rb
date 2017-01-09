class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # user = User.new(name: params[:name], email: params[:email], password: params[:password], age: params[:age])
    user = User.new( user_params )
    if user.valid?
      user.save
      redirect_to "/"
    else
      flash[:errors] = user.errors.full_messages
      @user = user
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :age, :password)
  end
end
