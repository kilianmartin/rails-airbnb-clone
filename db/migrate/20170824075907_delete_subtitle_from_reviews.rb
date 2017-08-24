class DeleteSubtitleFromReviews < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :subtitle
  end
end
