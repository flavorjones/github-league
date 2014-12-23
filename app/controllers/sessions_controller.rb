class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    puts "MIKE: #{__FILE__}:#{__method__}: auth is #{auth.inspect}"
    github_user = GithubUser.find_by_uid(auth["uid"]) || GithubUser.create_github_user(auth)
    session[:user_id] = github_user.id
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
