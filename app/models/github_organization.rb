class GithubOrganization < GithubApi
  attr_reader :properties

  def self.all github_user
    JSON.parse(get(github_user, "/user/orgs")).collect do |org|
      GithubOrganization.new(github_user, org)
    end
  end

  def initialize github_user, properties
    super github_user
    @properties = properties
  end

  def login
    @login ||= properties["login"]
  end

  def api_url
    @api_url ||= properties["url"]
  end

  def avatar_url
    @avatar_url ||= properties["avatar_url"]
  end

  def html_url
    @html_url ||= more_properties["html_url"]
  end

  private

  def more_properties
    @more_properties ||= JSON.parse(get(api_url))
  end
end
