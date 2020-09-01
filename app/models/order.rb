class Order < ApplicationRecord
  belongs_to :user
  has_many :item_orders
  has_many :items, through: :item_orders

  def get_item_orders
    return ItemOrder.where(order: self)
  end
end
