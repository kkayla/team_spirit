class User < ActiveRecord::Base
validates_presence_of :username, :password, :email
has_many :posts
#has_many :comments
end
