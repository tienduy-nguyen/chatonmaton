class OrderMailer < ApplicationMailer
  default from: 'chaton-maton@outlook.fr'
  layout 'mailer'

  def send_new_order_message(user)
    @user = user
    mail(:to => 'yanis95@yopmail.com', :subject => "New Order created please review and enable.")
  end

  def send_new_user_message(user)
    @user = user
    mail(:to => @user.email, :subject => "Your order is confirmed !")
  end
end
