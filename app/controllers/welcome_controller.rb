class WelcomeController < ApplicationController
  def welcome
    @current_github_user = current_github_user
  end
end
