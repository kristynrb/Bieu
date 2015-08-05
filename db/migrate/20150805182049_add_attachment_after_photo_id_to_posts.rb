class AddAttachmentAfterPhotoIdToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :after_photo_id
    end
  end

  def self.down
    remove_attachment :posts, :after_photo_id
  end
end
