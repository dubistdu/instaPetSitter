class AddSizeToPet < ActiveRecord::Migration[5.0]
  def change
    add_column :pets, :size, :string
  end
end
