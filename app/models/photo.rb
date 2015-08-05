class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :salon
  belongs_to :professional
  has_many :likes

  has_attached_file :profile_photo, styles: {
        thumb: '100x100>',
        square: '200x200#',
        medium: '300x300>'
        },
      url: ":s3_domain_url",
      path: "users/:id/profile_photo/:style_:basename.:extension"

    validates_attachment_content_type :profile_photo, :content_type => /\Aimage\/.*\Z/
end
