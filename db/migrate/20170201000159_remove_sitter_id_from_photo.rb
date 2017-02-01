class RemoveSitterIdFromPhoto < ActiveRecord::Migration[5.0]
  def change
    remove_column :photos, :sitter_id, :integer
  end
end
