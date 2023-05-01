class Spectacle < ApplicationRecord
  has_many :performs, dependent: :destroy
end
