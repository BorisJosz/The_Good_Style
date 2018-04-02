class ProductsController < ApplicationController
  def show
    @product_variations  = ProductVariation.new
    @product = Product.find(params[:id])
    @brand = @product.brand
    @sustainability_infos = @product.sustainability_infos
  end

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @products = Product.where(sql_query, query: "%#{params[:query]}%")
    else
      @products = Product.all
    end
  end
end




