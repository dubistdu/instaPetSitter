class AddSizeUsesIdToSitPet < ActiveRecord::Migration[5.0]
  def change
    add_column :sit_pets, :size, :string
    add_column :sit_pets, :user_id, :integer
  end
end
