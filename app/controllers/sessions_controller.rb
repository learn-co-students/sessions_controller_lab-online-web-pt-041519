class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to :root
    else
      redirect_to '/sessions/new'
    end
  end
  
  def destroy
    session.delete :name
  end
end
