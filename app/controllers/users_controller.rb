class UsersController < ApplicationController
  

  def index

  end

  def new
  	@user = User.new

  end

  def create
  	puts "before"
  	puts params
  	puts params[:user]
  	puts params[:password]
  	puts "after"
    @user = User.new(params[:user])
    @user.password = params[:password]
    # User.create(username:params["username"],password:params["password"])
  
  end

   private

  def user_params
    params.require(:user).permit(:username, :password_hash)
  end

end