class RemoveDogSmMdLgFromPet < ActiveRecord::Migration[5.0]
  def change
    remove_column :pets, :dog_lg, :integer
    remove_column :pets, :dog_md, :integer
    remove_column :pets, :dog_sm, :integer
    remove_column :pets, :other, :integer
  end
end
