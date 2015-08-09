class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :salon_name, null: false
      t.string :member_type
      t.string :profile_photo
      t.string :phone_number
      t.string :web_address

      t.timestamps null: false
    end

    add_index :professionals, :last_name
  end
end
