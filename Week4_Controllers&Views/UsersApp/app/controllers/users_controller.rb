class UsersController < ApplicationController
  def index
    #query db for all users
    @users = User.all
    #show them on index.html.erb view

  end

  def new
    @user = User.new
  end

  def create
    user = User.create( user_params )
    redirect_to '/'
  end

  def show
    #need a user based on id
    @user = User.find(params[:id])
    #instance variable to send to view
    #renders a view
  end

  def edit
    #need a user based on id
    @user = User.find(params[:id])
    #instance variable to send to view
    #renders a view
  end

  def update
    #need to update specific user
    User.find(params[:id]).update( user_params )
    #redirect to show page
    redirect_to "/users/#{params[:id]}"
  end

  def destroy
    #find the id of the user and destroy them
    User.find(params[:id]).destroy
    #redirect to index
    redirect_to "/"
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
