class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :salon
  belongs_to :professional
  belongs_to :photo

  has_many :liked_users, through: :likes, source: :user
  has_many :liked_salons, through: :likes, source: :salon
  has_many :liked_professionals, through: :likes, source: :professional
  has_many :liked_photos, through: :likes, source: :photo
end
