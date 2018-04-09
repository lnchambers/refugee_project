class Admin::UsersController < Admin::BaseController
  before_action :check_auth

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Email sent to #{user.email}to finish registration"
    else
      flash[:notice] = "Something went wrong: Please try again"
    end
  end

  def update
  end

  def delete
  end

  def show
    @requests = Request.all
  end

  private

    params.require(:user).permit(:email, :first_name, :last_name)

end
