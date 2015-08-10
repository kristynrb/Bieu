class CreateSalons < ActiveRecord::Migration
  def change
    create_table :salons do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :salon_name, null: false
      t.string :member_type
      t.string :profile_photo
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :phone_number
      t.string :web_address
      t.string :before_photo_id
      t.string :after_photo_id
      t.string :photo_pair_id

      t.timestamps null: false
    end

    add_index :salons, :salon_name
    add_index :salons, :zipcode
  end
end
