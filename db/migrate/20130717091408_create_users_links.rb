class CreateUsersLinks < ActiveRecord::Migration
  def change
    create_table :userslinks do |t|
      t.string :user_id
      t.string :url_id

      t.timestamps
    end
  end
end
