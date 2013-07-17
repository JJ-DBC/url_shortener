class UserLink < ActiveRecord::Base
  belongs_to :users
  belongs_to :urls
  # Remember to create a migration!
end
