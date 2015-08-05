class AddAttachmentBeforePhotoIdToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :before_photo_id
    end
  end

  def self.down
    remove_attachment :posts, :before_photo_id
  end
end
