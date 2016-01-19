class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new

	end

	def create
		@user = User.create(user_params)
		# if user params aren't nil, save @user
	  if @user.save
			session[:user_id]= @user.id
	    redirect_to users_path
	  else
	  	redirect_to new_user_path
	  end
	end

	def current_user
		@current_user = session[:user_id]
	end


	def show
	        @user=User.find(params[:id])
	        @posts = Post.where(user_id: @user.id)
	    end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		if @user.update(user_params)
		 redirect_to @user
		else
		 redirect_to(edit_path)
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		session.destroy

	 redirect_to users_path
 end

	def user_params
		params.require(:user).permit(:username, :password, :email)
	end
end
