class RequestsController < ApplicationController

  def new
    redirect_to root_path unless user_signed_in?
  end

  def show
  end

  def create
  end
end
