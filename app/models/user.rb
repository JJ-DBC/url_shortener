class User < ActiveRecord::Base
  has_many :users_links
  has_many :urls, :through => :users_links

  # Remember to create a migration!
end
