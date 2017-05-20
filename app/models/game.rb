class Game < ActiveRecord::Base
  has_many :cells

  def next_turn
    cells.each do |cell|
      if cell.less_than_two_neighbors(cells)
        cell.update(future_living_state: false)
      elsif cell.more_than_three_neighbors(cells)
        cell.update(future_living_state: false)
      elsif (cell.living == false) && (cell.exactly_three_neighbors(cells))
        cell.update(future_living_state: true)
      else
        cell.update(future_living_state: cell.living)
      end
    end

    cells.each do |cell|
      cell.update(living: cell.future_living_state)
      cell.update(future_living_state: nil)
    end
  end

end
