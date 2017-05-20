class HomeController < ApplicationController
  before_action :create_game, only: [:index]

  def index
    create_game
    # json.cells(@game.cells) do |cell|
    #   json.extract! cell, :x, :y, :living, :future_living_state
    #   json.url cell_url(cell, format: :json)
    # end
  end
  ## need a new route or controller to start game

  def start
    @game = Game.find(params[:id])
    @game.next_turn
    respond_to do |format|
      format.js
    end
  end

  private

  def create_game
    @game = Game.create
    create_x_values
    create_y_values
    @i = 0
    625.times do
      living = [true, false].sample
      cell = @game.cells.create(x: @x_values[@i], y: @y_values[@i], living: living)
      @i += 1
    end
  end


  def create_x_values
    @x_values = []
    25.times do
      (1..25).map { |i| @x_values.push(i) }
    end
  end

  def create_y_values
    @y_values = []
    (1..25).each do |i|
      25.times do
        @y_values.push(i)
      end
    end
  end
end
