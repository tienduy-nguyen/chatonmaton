class Cart < ApplicationRecord
  belongs_to :user
  has_many :item_carts
  has_many :items, through: :item_carts

  def get_item_carts
    return ItemCart.where(cart: self)
  end
end
