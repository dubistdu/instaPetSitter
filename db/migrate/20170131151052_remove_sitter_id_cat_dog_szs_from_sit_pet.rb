class RemoveSitterIdCatDogSzsFromSitPet < ActiveRecord::Migration[5.0]
  def change
    remove_column :sit_pets, :dog_lg, :integer
    remove_column :sit_pets, :dog_md, :integer
    remove_column :sit_pets, :dog_sm, :integer
    remove_column :sit_pets, :cat, :integer
    remove_column :sit_pets, :other, :integer
    remove_column :sit_pets, :sitter_id, :integer
  end
end
