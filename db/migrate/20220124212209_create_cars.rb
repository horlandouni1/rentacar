class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :plate
      t.string :car_type
      t.string :brand
      t.string :year
      t.string :model
      t.string :color
      t.string :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
