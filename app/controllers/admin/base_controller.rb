class Admin::BaseController < ApplicationController
  def check_auth
    if !current_user.nil?
      raise ActionController::RoutingError.new('Not Found') unless current_user.admin?
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end
end
