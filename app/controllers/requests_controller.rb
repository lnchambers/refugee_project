class RequestsController < ApplicationController
  before_action :check_auth

  def new
    @request = Request.new
  end

  def show
    @request = Request.find(params[:id])
  end

  def create
    binding.pry
    request = Request.new(params[:request])
    "http://localhost:3000/api/v1/results?age=#{request.age}&name=#{request.name}&gender=#{request.gender}&country_of_origin=#{request.country_of_origin}&group_size=#{request.group_size}&country_of_seperation=#{request.country_of_seperatio}"
  end

  private

    def request_params
      params.require[:request].permit(:age, :name, :gender, :country_of_origin, :group_size, :country_of_seperation)
    end
end
