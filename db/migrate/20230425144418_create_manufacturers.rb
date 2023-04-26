class CreateManufacturers < ActiveRecord::Migration[5.2]
  def change
    create_table :manufacturers do |t|
      t.text :name
      t.text :image
      t.date :founded
      t.text :location

      t.timestamps
    end
  end
end
