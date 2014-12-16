class Landscape < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  belongs_to :user

  validates :caption, presence: true
  validates :description, presence: true
  validates :image, presence: true
end
