class GithubUser < ActiveRecord::Base
  def self.create_or_update_from_auth(auth)
    user = find_by_uid auth["uid"]

    if user.present?
      user.update! user_attributes_from_auth(auth)
      return user
    end

    create! user_attributes_from_auth(auth).merge(uid: auth["uid"])
  end

  def self.user_attributes_from_auth auth
    {
      name:     auth["info"]["name"],
      nickname: auth["info"]["nickname"],
      token:    auth["credentials"]["token"]
    }
  end
end
