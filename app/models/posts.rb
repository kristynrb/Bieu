class Posts < ActiveRecord::Base
  belongs_to :user
  belongs_to :salon
  belongs_to :professional
  has_many :likes

  has_attached_file :before_photo_id, styles: {
        thumb: '100x100>',
        square: '200x200#',
        medium: '300x300>'
        },
      url: ":s3_domain_url",
      path: "users/:id/before_photo_id/:style_:basename.:extension"

    validates_attachment_content_type :before_photo_id, :content_type => /\Aimage\/.*\Z/

    has_attached_file :after_photo_id, styles: {
          thumb: '100x100>',
          square: '200x200#',
          medium: '300x300>'
          },
        url: ":s3_domain_url",
        path: "users/:id/after_photo_id/:style_:basename.:extension"

      validates_attachment_content_type :after_photo_id, :content_type => /\Aimage\/.*\Z/
end
