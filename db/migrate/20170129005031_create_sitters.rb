class CreateSitters < ActiveRecord::Migration[5.0]
  def change
    create_table :sitters do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :email
      t.float :lat
      t.float :long
      t.boolean :backyard
      t.text :preferences
      t.string :picture_id

      t.timestamps
    end
  end
end
