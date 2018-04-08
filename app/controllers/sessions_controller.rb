class SessionsController < ApplicationController

  def new

  end

  def create
    redirect_to "/dashboard/#{params[:id]}"
  end

end
