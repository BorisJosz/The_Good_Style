# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'meg.vandezande@gmail.com'

  layout 'mailer'
end
