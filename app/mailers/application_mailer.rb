# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'Boris.Josz@gmail.com'

  layout 'mailer'
end
