class Order < ApplicationRecord
  belongs_to :user
  has_many :item_orders
  has_many :items, through: :item_orders

  after_create :send_admin_mail, :send_user_mail

  def get_item_orders
    return ItemOrder.where(order: self)
  end

  def send_admin_mail
    OrderMailer.send_new_order_message(self).deliver
  end

  def send_user_mail
    OrderMailer.send_new_order_confirmation(self).deliver
  end
end
