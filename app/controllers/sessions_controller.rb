class SessionsController < ApplicationController
	def new
		puts params.inspect
	end
	def create
		@user=User.where(username: params[:username]).first
		if @user && @user.password == params[:password]
			session[:user_id]= @user.id
#A session has been created for that user
			redirect_to user_path(@user)
		else
			redirect_to root_path
	end

	def destroy
		@user = User.where(username: params[:username]).first
		if @user && user.password == params[:password]
			session[:user_id] = @user.id
		else
			redirect_to edit_user_path
	end
end
end
end
