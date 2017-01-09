class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
  end

  def create
    secret = Secret.create(user: current_user, content: params[:content])
    if secret.valid?
      secret.save
    end
    redirect_to "/users/#{session[:user_id]}"
  end

  def destroy
    secret = Secret.find(params[:id])
    if secret
      secret.destroy
    end
    redirect_to "/users/#{session[:user_id]}"
  end
end
