class CreatePlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :players do |t|
      t.integer :points
      t.integer :points_per_click
      t.integer :points_per_second

      t.timestamps
    end
  end
end
