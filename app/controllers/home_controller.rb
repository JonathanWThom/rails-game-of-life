class HomeController < ApplicationController
  before_action :create_game, only: [:index]

  def index
    create_game
  end
  ## need a new route or controller to start game

  def start
    @game = Game.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  private

  def create_game
    @game = Game.create
    @x = 1
    @y = 1
    10.times do
      living = [true, false].sample
      cell = @game.cells.create(x: @x, y: @y, living: living)
      @x += 1
      @y += 1
    end
  end
end
