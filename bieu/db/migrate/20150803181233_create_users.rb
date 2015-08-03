class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :username, null: false
      t.string :member_type, null: false
      t.string :profile_photo
      t.string :before_photo_id
      t.string :after_photo_id
      t.string :photo_pair_id
      
      t.timestamps null: false
    end

    add_index :users, :email
  end
end
