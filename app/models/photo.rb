class Photo < ActiveRecord::Base
  belongs_to :user
  belongs_to :salon
  belongs_to :professional
  has_many :likes
end
