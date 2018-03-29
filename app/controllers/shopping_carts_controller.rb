class ShoppingCartsController < ApplicationController

  def new
    @shopping_cart_item = ShoppingCartItem.new
  end

  def add_item
    # controller post receiving wish from user to add item to shopping cart
    # 1 Find Item from Route info
   @product = Product.find(params[:product_id])
   # 2 Get from post params info about product variation to identify what are the specificities of desired item
   @productVariation = ProductVariation.where(product: @product, size_id: set_variations[:size].to_i, color_id: set_variations[:color].to_i )
   # 3 Establish wither we have a shopping cart
   @shoppingCart = ShoppingCart.where(user: current_user, status: false).first
   if @shoppingCart.nil?
    # 4 if we don't have a shopping cart, we create one
    @shoppingCart = ShoppingCart.create(user: current_user, status: false)
   end
     # 5 as we have all the infos to create a shopping cart item in DB, we create it
    ShoppingCartItem.create!(product_variation: @productVariation.first, shopping_cart: @shoppingCart)
    # 6 render js code so we dont change page and can yet update
    redirect_to product_path(@product)

  end

  def quantity

  end

  def create
    @shopping_cart_item = ShoppingCartItem.new
    @shopping_cart_item.save
  end

  def set_variations
       params.require(:product_variation).permit(:size, :color)
  end

  def show
    @shoppingCart = ShoppingCart.find_by(user: current_user, status: false)
  end

end
