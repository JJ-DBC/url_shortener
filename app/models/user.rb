class User < ActiveRecord::Base
  has_many :users_links
  has_many :urls, :through => :users_links

  validates :email, presence: true, uniqueness: true
  validates :first_name presence: true
end
