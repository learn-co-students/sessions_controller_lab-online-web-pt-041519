class SessionsController < ApplicationController
  #base on my routes i need a
  #new
  #create
  #destroy
  def new

  end

  def create
    current_user = session[:name] = params[:name]

    if !params[:name]  || params[:name].empty?

      redirect_to '/login' #/sessions/new
    else
      current_user
      redirect_to '/'
    end
  end


  def destroy
     session.delete :name
  end

end
