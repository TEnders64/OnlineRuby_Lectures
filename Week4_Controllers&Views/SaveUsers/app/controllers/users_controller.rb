class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    user = User.new(name: params[:name], email: params[:email], password: params[:password])
    if user.valid?
      user.save
    redirect_to "/"
  end
end
