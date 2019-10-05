class SessionsController < ApplicationController

  def new
  end
  
  def index
    @name = session[:name]
  end

  def create
    
    if !params[:name] || params[:name].empty?
      redirect_to login_path, alert: "Please enter your name."
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end 


end