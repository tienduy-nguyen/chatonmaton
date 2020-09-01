class Item < ApplicationRecord
  has_many :item_carts
  has_many :carts , through: :carts
  has_many :item_orders
  has_many :orders, through: :item_orders

  validates :title, length: {minimum: 3}, presence: true
  validates :description, length: {minimum: 10}, presence: true
  validates :price, numericality: { greater_than: 1}, presence: true
  validates :image_url, presence: true
end
