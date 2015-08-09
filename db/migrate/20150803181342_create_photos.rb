class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :before_photo_id
      t.integer :after_photo_id
      t.string :comment

      t.timestamps null: false
    end
  end
end
