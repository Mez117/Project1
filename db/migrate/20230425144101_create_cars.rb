class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.text :name
      t.text :image
      t.integer :manufacturer_id
      t.integer :user_id
      t.integer :trim_id
      t.integer :engine_id

      t.timestamps
    end
  end
end
