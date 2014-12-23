class CreateGithubUsers < ActiveRecord::Migration
  def change
    create_table :github_users do |t|
      t.string :uid
      t.string :name
      t.string :nickname

      t.timestamps

      t.index :uid
    end
  end
end
