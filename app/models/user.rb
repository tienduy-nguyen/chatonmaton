class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  

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


end
