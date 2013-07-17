class CreateUsersLinks < ActiveRecord::Migration
  def change
    create_table :users_urls do |t|
      t.belongs_to :user
      t.belongs_to :url

      t.timestamps
    end
  end
end
