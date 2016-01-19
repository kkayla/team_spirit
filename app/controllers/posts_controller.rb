class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
		@user = current_user
		@post = Post.new
	end

	def create
	@user= current_user
	@post = Post.create(post_params)
	redirect_to posts_path
	end

	def show
		puts params.inspect
		# @user = User.find(session[:user_id])
		# @signed_in_user = session[:user_id]
		@post = Post.find(params[:id])
		# @posts = @user.posts
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		post.update(post_params)
		redirect_to post_path
	end

	def destroy
	  @post = Post.find(params[:id])
	  @post.delete
    redirect_to user_path
	  end
end

private
def post_params
	params.require(:post).permit(:body).merge(user_id: current_user.id)
end

# on the comments controller:
# @post=Post.first	brings

# @post - Post.find(params[post_id])
# @comment = @post.comments.build(comment_params)
# @comment.user = current_user
# @comment.save
# redirect to post_path(@post)

# private
# def comment_params
# 	params.require(:comment).permit(:content)
# end
