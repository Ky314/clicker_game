class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :points_per_click
      t.integer :points_per_second
      t.integer :cost

      t.timestamps
    end
  end
end
