class User < ActiveRecord::Base
  has_many :posts
  validates :username, presence: true
  validates :email, presence: true, length: {minimum: 3}, with: /@/
end
