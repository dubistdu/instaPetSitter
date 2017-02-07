class AddPetNumberToSitPet < ActiveRecord::Migration[5.0]
  def change
    add_column :sit_pets, :pet_number, :integer
  end
end
