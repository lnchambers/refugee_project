class RequestPresenter

  def initialize(params, user, requested)
    @scoped    = params[:scoped]
    @user      = user
    @requested = requested
  end

  def requests
    if scoped
      requested.where(created_at: user.last_sign_in_at..Time.now)
    else
      requested
    end
  end

  private

    attr_reader :scoped, :user, :requested

end
