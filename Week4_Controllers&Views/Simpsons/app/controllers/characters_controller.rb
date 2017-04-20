class CharactersController < ApplicationController

  def index
      @characters = Character.all
  end

  def new
      render layout: 'two_column'
  end

  def show

  end

  def create
    char = Character.new( character_params )
    if char.valid?
        redirect_to '/'
    else
        flash[:errors] = char.errors.full_messages
        redirect_to '/characters/new'
    end
  end

  private
  def character_params
      params.require(:character).permit(:first_name, :last_name, :workplace)
  end
end
