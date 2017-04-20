class DashboardsController < ApplicationController
  before_action :logged_in?

  def index
    @pizzas = Pizza.all
  end

  def checkout
  end
end
