# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'hello@fabbrikka.com'

  layout 'mailer'
end
