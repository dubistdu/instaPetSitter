class RemoveSitterIdFromPet < ActiveRecord::Migration[5.0]
  def change
    remove_column :pets, :sitter_id, :integer
  end
end
