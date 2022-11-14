class Singer < ApplicationRecord
  has_many :songs
  has_one_attached :avatar
end
