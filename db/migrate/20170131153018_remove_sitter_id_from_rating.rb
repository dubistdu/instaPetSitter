class RemoveSitterIdFromRating < ActiveRecord::Migration[5.0]
  def change
    remove_column :ratings, :sitter_id, :integer
  end
end
