class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_github_user
    @current_github_user ||= GithubUser.find_by_id(session[:user_id]) if session[:user_id]
  end
end
