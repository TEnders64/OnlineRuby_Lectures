class UsersController < ApplicationController
  def index
  end

  def users_partial
    user = User.find(params[:id])
    return render partial: "user", locals: {user_obj: user}
  end
end
