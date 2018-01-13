class Ad < ApplicationRecord
  belongs_to :member

  #gem money-rails
  monetize :price_cents
  #carrierwave mount
  mount_uploader :image, ImageUploader
end