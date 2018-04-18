class Admin::RequestsController < Admin::BaseController
  before_action :check_auth

  def index
    @requests = RequestPresenter.new(params, current_user, Request.all).requests
  end
  
end
