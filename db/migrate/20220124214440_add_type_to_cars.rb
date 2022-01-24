class AddTypeToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :type, :string
  end
end
