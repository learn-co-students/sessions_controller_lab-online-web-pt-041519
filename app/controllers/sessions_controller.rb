class SessionsController < ApplicationController

    def new
        
    end

    def create
        session[:name] = params[:name]
        if session[:name] == nil || session[:name].empty? == true
            redirect_to '/login'
        else
            redirect_to '/'
        end
    end

    def destroy
        if session[:name] != nil
            session.clear
        end
    end


end
