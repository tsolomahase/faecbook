class Feed < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :feed, presence: true

  belongs_to :user
end
