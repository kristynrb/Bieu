class Salon < ActiveRecord::Base
  has_secure_password

  has_many :posts
  has_many :professionals
  has_many :likes

  has_many :liked_posts, through: :likes, source: :posts
  has_many :liked_salons, through: :likes, source: :salon
  has_many :liked_professionals, through: :likes, source: :professional
  has_many :liked_users, through: :likes, source: :user
end
