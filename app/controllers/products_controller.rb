class ProductsController < ApplicationController
  def show
    @product_variations  = ProductVariation.new
    @product = Product.find(params[:id])
    @brand = @product.brand
  end

  def index
    if params[:query].present?
      @products = Product.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @products = Product.all
    end
  end
end




