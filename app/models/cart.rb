class Cart < ApplicationRecord
  belongs_to :user
  has_many :item_carts
  has_many :items, through: :item_carts

  def get_item_carts
    return ItemCart.where(cart: self)
  end
  def is_empty?
    return self.get_item_carts.count <1
  end
end
