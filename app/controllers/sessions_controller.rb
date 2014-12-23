class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    github_user = GithubUser.create_or_update_from_auth(auth)
    session[:user_id] = github_user.id
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
