class DashboardController < ApplicationController
  before_action :check_auth

  def show
    @user = User.find(params[:id])
  end

end
