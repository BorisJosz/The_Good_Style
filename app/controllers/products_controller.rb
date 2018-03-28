class ProductsController < ApplicationController
  def show
    @product_variations  = ProductVariation.new
    @product = Product.find(params[:id])
    @brand = @product.brand
  end
end




