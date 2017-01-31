class RemoveSitterIdFromFavorite < ActiveRecord::Migration[5.0]
  def change
    remove_column :favorites, :sitter_id, :integer
  end
end
