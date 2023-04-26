class CreateEngines < ActiveRecord::Migration[5.2]
  def change
    create_table :engines do |t|
      t.text :name
      t.integer :capacity
      t.integer :hp
      t.integer :torque
      t.text :mods
      t.text :image
      t.integer :car_id

      t.timestamps
    end
  end
end
