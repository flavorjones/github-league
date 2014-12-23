class AddTokenToGithubUser < ActiveRecord::Migration
  def change
    add_column :github_users, :token, :string
  end
end
