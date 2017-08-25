class AddCoordinatesToKitchen < ActiveRecord::Migration[5.1]
  def change
    add_column :kitchens, :latitude, :float
    add_column :kitchens, :longitude, :float
  end
end
