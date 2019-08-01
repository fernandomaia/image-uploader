class ImageFile < ApplicationRecord
  validates :owner, presence: true
  validates :description, presence: true

  has_one_attached :image
end
