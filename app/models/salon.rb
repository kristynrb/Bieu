class Salon < ActiveRecord::Base
  has_many :photos
  has_many :professionals
  has_many :likes

  has_many :liked_photos, through: :likes, source: :photo
  has_many :liked_salons, through: :likes, source: :salon
  has_many :liked_professionals, through: :likes, source: :professional
  has_many :liked_users, through: :likes, source: :user
end
