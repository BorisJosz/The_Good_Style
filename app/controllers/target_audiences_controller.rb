# frozen_string_literal: true

class TargetAudiencesController < ApplicationController
  def women
    target = TargetAudience.find_by(gender: 'women')

    if params[:product_category]
      category = ProductCategory.find(params[:product_category])
      @products = Product.where(target_audience: target, product_category: category)
    else
      @products = Product.where(target_audience: target)
    end
  end

  def men
    target = TargetAudience.find_by(gender: 'men')
    @products = Product.where(target_audience: target)
  end

  def kids
    target = TargetAudience.find_by(gender: 'kids')
    @products = Product.where(target_audience: target)
  end
end
