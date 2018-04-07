class Admin::RequestsController < Admin::BaseController
  def index
    @requests = Request.all
  end
end
