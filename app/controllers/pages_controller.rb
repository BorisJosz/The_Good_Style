class PagesController < ApplicationController


  def home
    @products = Product.all
    @target_audiences = TargetAudience.all
  end
end
