class Post < ActiveRecord::Base
  belongs_to :user
  # has_many :comments
  # validates_length_of :body, maximum: 150
end
