class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :username, null: false
      t.string :member_type
      t.string :profile_photo

      t.timestamps null: false
    end

    add_index :users, :email
  end
end
