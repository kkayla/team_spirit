class User < ActiveRecord::Base
  validates_presence_of :username
  validates_presence_of :password
  validates_presence_of :email
  has_many :posts
  #has_many :comments
end
