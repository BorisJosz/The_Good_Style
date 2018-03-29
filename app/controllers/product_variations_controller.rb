class ProductVariationsController < ApplicationController
  def new
    @product_variation = ShoppingCartItem.new
  end

  def create
    @product_variation = ProductVariation.new(product_variation_params)
    @product_variation.save
  end
end
