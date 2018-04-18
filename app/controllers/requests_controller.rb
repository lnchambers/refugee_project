class RequestsController < ApplicationController
  before_action :check_auth

  def new
    @request = Request.new
  end

  def show
    @request = Request.find(params[:id])
  end

  def create
    request = Request.new(request_params)
    request.user = current_user
    if request.save
      flash[:notice] = "Request sent successfully, retrieving results"
      result = ResultSearch.new(request).update_request
      redirect_to request_path(request)
    else
      flash[:notice] = "Something went wrong. Please try again later."
      redirect_to root_path
    end
  end

  private

    def request_params
      params.require(:request).permit(:age, :name, :gender, :country_of_origin, :group_size, :country_of_separation)
    end
end
