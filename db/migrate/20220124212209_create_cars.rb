class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :plate
      t.string :typebrand
      t.string :year
      t.string :model
      t.string :color
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
