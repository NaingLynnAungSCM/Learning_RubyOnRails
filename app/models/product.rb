class Product < ApplicationRecord
  include ImageUploader::Attachment(:image)
  validates :name, :price, :description, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
end
