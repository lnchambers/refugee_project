class Admin::RequestsController < Admin::BaseController
  def index
    @requests = RequestPresenter.new(params, current_user, Request.all).requests
  end
end
