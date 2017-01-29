class CreateSitPets < ActiveRecord::Migration[5.0]
  def change
    create_table :sit_pets do |t|
      t.string :pet_kind
      t.string :breed
      t.integer :dog_lg
      t.integer :dog_md
      t.integer :dog_sm
      t.integer :cat
      t.integer :other
      t.integer :sitter_id

      t.timestamps
    end
  end
end
