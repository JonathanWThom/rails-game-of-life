class CreateGamesAndCells < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
    end

    create_table :cells do |t|
      t.integer :x
      t.integer :y
      t.integer :game_id
      t.boolean :living
      t.boolean :future_living_state
    end
  end
end
