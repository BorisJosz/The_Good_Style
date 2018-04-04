class ShoppingCartsController < ApplicationController
  def new
    @shopping_cart_item = ShoppingCartItem.new
  end

  def add_item
    # controller post receiving wish from user to add item to shopping cart
    # 1 Find Item from Route info
   @product = Product.find(params[:product_id])
   @productVariation = ProductVariation.where(product: @product, size_id: set_variations[:size].to_i, color_id: set_variations[:color].to_i )
   # 2 Get from post params info about product variation to identify what are the specificities of desired item
    if @productVariation.empty?
      flash[:alert] = "Please enter a size and color."
      redirect_to product_path(@product)
    else
      # 3 Establish wither we have a shopping cart
      @shoppingCart = ShoppingCart.where(user: current_user, status: false).first
      if @shoppingCart.nil?
        # 4 if we don't have a shopping cart, we create one
        @shoppingCart = ShoppingCart.create(user: current_user, status: false)
      end
      # 5 as we have all the infos to create a shopping cart item in DB, we create it
      ShoppingCartItem.create!(product_variation: @productVariation.first, shopping_cart: @shoppingCart)
      # 6 render js code so we dont change page and can yet update
      flash[:notice] = "This product has been added to the cart"
      redirect_to product_path(@product)
    end
  end

  def create
    @shopping_cart_item = ShoppingCartItem.new
    @shopping_cart_item.save
  end

  def set_variations
    params.require(:product_variation).permit(:size, :color)
  end

  def show
    @shopping_cart_items = ShoppingCartItem.all
    @shoppingCart = ShoppingCart.find_by(user: current_user, status: false)
  end

  def quantity
    @shopping_cart_item = ShoppingCartItem.find(set_shopping_cart_items[:id])
    @shopping_cart_item.quantity = set_shopping_cart_items[:quantity]
    @shopping_cart_item.save
    @shopping_cart_items = ShoppingCartItem.all
    @shoppingCart = ShoppingCart.find_by(user: current_user, status: false)
    redirect_to shopping_cart_path(@shoppingCart)
  end

  def set_shopping_cart_items
    params.require(:shopping_cart_item).permit(:quantity, :id)
  end
end