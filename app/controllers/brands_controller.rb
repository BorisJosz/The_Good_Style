class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def show
    @brand = Brand.find(params[:id])
  end
end
