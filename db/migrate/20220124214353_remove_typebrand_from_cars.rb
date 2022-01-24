class RemoveTypebrandFromCars < ActiveRecord::Migration[6.1]
  def change
    remove_column :cars, :typebrand, :string
  end
end
