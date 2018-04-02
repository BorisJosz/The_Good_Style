class ShoppingCartItemsController < ApplicationController
  def destroy
    @shopping_cart_item = ShoppingCartItem.find(params[:id])
    @shoppingCart = @shopping_cart_item.shopping_cart
    @shopping_cart_item.destroy
    redirect_to shopping_cart_path(@shoppingCart)
  end
end
