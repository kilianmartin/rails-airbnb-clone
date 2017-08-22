class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :subtitle
      t.integer :rating
      t.string :comment
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
