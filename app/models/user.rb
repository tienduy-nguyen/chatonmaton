class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  after_create :must_create_cart, :welcome_send
  

  has_one :cart
  has_many :orders

  validates :email, 
  presence:true , 
  uniqueness:{case_sensitive: false}, 
  format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Email adress please" }

  validates :password, length: {minimum: 6}, presence: true, on: :create
  validates :password_confirmation, length: {minimum: 6}, presence: true, on: :create
  validates :password, length: {minimum: 6}, presence: true, on: :update, if: :encrypted_password_changed?
  validates :password_confirmation, length: {minimum: 6}, presence: true, on: :update, if: :encrypted_password_changed?

  def full_name
    if self.first_name.nil? && self.last_name.nil?
        return self.email.split('@')[0]
    else
     return "#{self.first_name.capitalize unless self.first_name.nil?} #{self.last_name.capitalize unless self.last_name.nil?}"
    end
  end


  def must_create_cart
    cart = Cart.new(user: self)
    cart.save ? true : cart.errors
  end

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
