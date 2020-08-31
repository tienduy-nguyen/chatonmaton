class Item < ApplicationRecord
  has_many :item_carts
  has_many :carts , through: :carts
  has_many :item_orders
  has_many :orders, through: :item_orders
end
