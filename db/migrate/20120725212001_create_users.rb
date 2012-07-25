class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :blog_link
      t.string :backpack_link
      t.string :github_link
      t.string :google_link
      t.string :codemountain_link
      t.string :shay_link

      t.timestamps
    end
  end
end
