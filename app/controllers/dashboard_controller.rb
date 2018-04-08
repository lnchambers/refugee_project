class DashboardController < ApplicationController
  before_action :check_auth

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      raise ActionController::RoutingError.new('Not Found')
  end

end
