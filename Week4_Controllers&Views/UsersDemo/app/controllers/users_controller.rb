class UsersController < ApplicationController
  def index
    @users = [
      {:name => "Todd"},
      {:name => "Joy"}
    ]
    render layout: 'two_column'
  end

  def new
  end
end
