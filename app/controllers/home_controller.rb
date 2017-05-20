class HomeController < ApplicationController
  def index
    @cells = []
    5625.times do
      living = [true, false].sample
      cell = Cell.new(living)
      @cells.push(cell)
    end
  end
end
