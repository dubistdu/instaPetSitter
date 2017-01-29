class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :picture_id
      t.text :about_me

      t.timestamps
    end
  end
end
