class Admin::UsersController < Admin::BaseController
  before_action :check_auth

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      generated_password = password_generation
      @user.password = generated_password
      RegistrationMailer.registered(current_user, @user, generated_password).deliver_now
      flash[:notice] = "Email sent to #{@user.email} to finish registration"
      redirect_to new_admin_user_path
    else
      flash[:notice] = "Something went wrong: Please try again"
      redirect_to new_admin_user_path
    end
  end

  def show
    @requests = Request.all
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :username, :password)
  end

end
