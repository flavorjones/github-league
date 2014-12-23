class GithubUser < ActiveRecord::Base
  def self.create_github_user(auth)
    create! do |user|
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.nickname = auth["info"]["nickname"]
    end
  end
end
