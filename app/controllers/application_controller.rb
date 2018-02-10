class ApplicationController < ActionController::Base
  config.generators do |g|
  g.assets          false
  g.helper          false
  g.javascripts     false
  g.test_framework  false
 end

  protect_from_forgery with: :exception
end
