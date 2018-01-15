class Ad < ApplicationRecord
  belongs_to :member
  #Validates
  validates_presence_of :title, :description, :price, :image

  #gem money-rails
  monetize :price_cents
  #carrierwave mount
  mount_uploader :image, ImageUploader
end