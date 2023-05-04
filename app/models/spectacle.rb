class Spectacle < ApplicationRecord
  has_many :performs, dependent: :destroy
  has_many_attached :photos
end
