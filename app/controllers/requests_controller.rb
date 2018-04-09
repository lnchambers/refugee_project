class RequestsController < ApplicationController
  before_action :check_auth

  def new
    @request = Request.new
  end

  def show
  end

  def create
  end
end
