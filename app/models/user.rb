class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :brands
  has_many :reviews
  has_many :shopping_carts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
