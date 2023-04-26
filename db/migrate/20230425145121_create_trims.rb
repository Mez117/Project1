class CreateTrims < ActiveRecord::Migration[5.2]
  def change
    create_table :trims do |t|
      t.text :color
      t.integer :wheel_size
      t.text :wheel_mat
      t.text :interior
      t.text :sport
      t.text :int_color
      t.text :image
      t.text :features
      t.integer :car_id

      t.timestamps
    end
  end
end
