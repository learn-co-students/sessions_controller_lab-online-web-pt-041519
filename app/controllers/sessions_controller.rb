class SessionsController < ApplicationController

  # Display login form
  def new
  end

  # Log user in
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else 
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  # Log user out
  def destroy
    session.delete :name
    redirect_to '/'
  end

end