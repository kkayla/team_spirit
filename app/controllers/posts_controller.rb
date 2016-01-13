class PostsController < ApplicationController
	belongs_to :user
	has_many :comments
end


# private
# def post_params
# 	params.require(:post).permit(:body)