class RemoveLatAndLongFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :lat, :float
    remove_column :users, :long, :float
  end
end
