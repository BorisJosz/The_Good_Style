# frozen_string_literal: true

class PaymentsController < ApplicationController
  before_action :set_order

  def new; end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )
    amount_cents = @shopping_cart.total.to_i
    charge = Stripe::Charge.create(
      customer:     customer.id, # You should store this customer id and re-use it.
      amount:       amount_cents,
      description:  "Payment for THE GOOD STYLE for order #{@shopping_cart.id}",
      currency:     @shopping_cart.amount.currency
    )

    @shopping_cart.update(payment: charge.to_json, status: 'paid')
    redirect_to shopping_cart_thanks_path(@shopping_cart)
rescue Stripe::CardError => e
  flash[:alert] = e.message
  redirect_to shopping_cart_thanks_path(@shopping_cart)
end

  private

  def set_order
    @shopping_cart = ShoppingCart.find(params[:shopping_cart_id])
  end
end
