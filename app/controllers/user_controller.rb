class UserController < ApplicationController


	def new
		@user=User.new
	end

	def create
		@user = User.create(user_params)
	end
		  if @user.save
		    redirect_to user_path @user 
		  else
		  	redirect_to new_user_path
		  end
	end

	def show
		@user=User.find(user_params)
	end

end

def destroy
end
# @user= User.find(params[:id])
# if @user
# end
# add: 

# private
# def user_params
# 		params.require(:user).permit(:username, :password)
# end
