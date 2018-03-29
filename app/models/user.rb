class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :brands
  has_many :reviews
  has_many :shopping_carts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def current_shopping_cart
    shoppingCart = ShoppingCart.where(user: self, status: false)
   if shoppingCart.empty?
    # 4 if we don't have a shopping cart, we create one
    shoppingCart = ShoppingCart.create(user: self, status: false)
   end
  return shoppingCart.first

  end
end
