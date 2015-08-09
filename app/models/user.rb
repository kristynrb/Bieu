class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true

  has_many :posts
  has_many :likes

  has_many :liked_salons, through: :likes, source: :salon
  has_many :liked_professionals, through: :likes, source: :professional
  has_many :liked_posts, through: :likes, source: :posts

  has_attached_file :profile_photo, styles: {
        thumb: '100x100>',
        square: '200x200#',
        medium: '300x300>'
        },
      url: ":s3_domain_url",
      path: "users/:id/profile_photo/:style_:basename.:extension"

    validates_attachment_content_type :profile_photo, :content_type => /\Aimage\/.*\Z/
end
