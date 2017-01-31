class RemoveCatFromPet < ActiveRecord::Migration[5.0]
  def change
    remove_column :pets, :cat, :integer
  end
end
