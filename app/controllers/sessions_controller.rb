class SessionsController < ApplicationController
  def new

  end

  def create
    session[:name] = params[:name]
    redirect_to logged_in? ? root_path : login_path
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end
