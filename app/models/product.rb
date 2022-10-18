class Product < ApplicationRecord
  validates :title, :description, :image_url, :kind, presence: true
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: /\.(gif|jpg|png)\z/i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  KIND_CATEGORIES = [:book, :magazine]
  enum kind: KIND_CATEGORIES
  
end