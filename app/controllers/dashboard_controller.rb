class DashboardController < ApplicationController
  before_action :check_auth

  def show
    @user = User.find(current_user.id)
    @requests = Request.where(user_id: current_user.id)
    unless @user == current_user
      raise ActionController::RoutingError.new('Not Found')
    end
  end

end
