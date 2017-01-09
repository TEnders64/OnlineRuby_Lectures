class NumbersController < ApplicationController
  def index
  end

  def numbers_getter
    render json: {data: [11,23,14,5]}
  end
end
