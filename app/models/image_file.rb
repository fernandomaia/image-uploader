class ImageFile < ApplicationRecord
  has_one_attached :image

  validates :owner, presence: true
  validates :description, presence: true
  validates :image, presence: true, blob: { content_type: ['image/png', 'image/gif', 'image/jpeg'] }
end
