class UserController < ApplicationController
<<<<<<< HEAD
  def index
  end
=======

def new
	@user=User.new
end

def create
		
		@user = User.new(params[:user])
	  if @user.save
	    redirect_to user_path @user
	  else
	  end
	end

def show
	@user=User.find(params[:id])
end

def create
	@user=User.new(params[:user])
end


>>>>>>> fc7f92a1700e325efc6380e891f43ce36049d204
end
