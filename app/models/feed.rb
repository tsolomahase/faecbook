class Feed < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  validates :image, presence: true
  validates :feeds, presence: true
end
