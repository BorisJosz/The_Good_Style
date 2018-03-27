class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



def default_url_options
  { host: ENV["HOST"] || "www.thegoodstyle.store" }
end

end
