class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    if !logged_in?

      redirect_to sessions_new_path
    end
  end

  helpers

  def logged_in?
    !(session[:name].nil? || session[:name].empty?)
  end
end
