class Admin::UsersController < Admin::BaseController
  before_action :check_auth

  def new
    @user = User.new
  end

  def create
  end

  def update
  end

  def delete
  end

  def show
    @requests = Request.all
  end

end
