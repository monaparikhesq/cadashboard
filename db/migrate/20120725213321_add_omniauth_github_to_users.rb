class AddOmniauthGithubToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string, after: :email
    add_column :users, :uid, :string, after: :provider
  end
end
