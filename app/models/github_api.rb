class GithubApi
  PROTOCOL = "https"
  HOST = "api.github.com"

  attr_reader :github_user

  def initialize github_user
    @github_user = github_user
  end

  def self.get github_user, path
    GithubApi.new(github_user).get(path)
  end

  def get path
    uri = (path =~ /^http(s)?/) ? path : "#{PROTOCOL}://#{HOST}#{path}"
    RestClient.get(uri,
      accept: "application/vnd.github.moondragon-preview+json",
      authorization: "token #{github_user.token}")
  end
end
