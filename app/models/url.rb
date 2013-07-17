class Url < ActiveRecord::Base
  has_many :users_links
  has_many :users, :through => :users_links
  # Remember to create a migration!
end
