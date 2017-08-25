class AddPriceColumnToKitchens < ActiveRecord::Migration[5.1]
  def change
    add_column :kitchens, :price, :integer
  end
end
