class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def check_auth
    raise ActionController::RoutingError.new('Not Found') unless user_signed_in?
  end
end
