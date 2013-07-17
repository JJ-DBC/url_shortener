class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
    #Short
    t.string :short_url
    t.string :long_url
    t.string :user_id
    t.references :
  end
end
