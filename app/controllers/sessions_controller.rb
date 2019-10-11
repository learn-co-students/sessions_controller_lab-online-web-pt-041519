class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]

    if name == not_nil
      redirect_to '/sessions/new'
    elsif name == not_space
      redirect_to '/sessions/new'
    else
      session[:name] = name
      redirect_to '/'
     
    end
  end

  def destroy
    session.delete :name
    redirect_to '/sessions/new'
  end 
end
