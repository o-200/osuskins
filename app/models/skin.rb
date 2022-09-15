class Skin < ApplicationRecord
  has_one_attached :file
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end