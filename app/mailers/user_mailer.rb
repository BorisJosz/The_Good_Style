# frozen_string_literal: true

class UserMailer < ApplicationMailer

  def welcome(user)
    @user = user # Instance variable => available in view

    mail(to: @user.email, subject: 'Welcome to The Good Style')
    # This will render a view in `app/views/user_mailer`!
  end

  def confirm_payment(shopping_cart)
    @user = shopping_cart.user
    @cart = shopping_cart
    mail(to: @user.email, subject: 'Payment Confirmation')
  end

end
