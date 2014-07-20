class UsersController < ApplicationController
  

  def index

  end

  def new
  	@user = User.new

  end

  def create
  
    @user = User.new(user_params)
    # puts "userbefore"
    # puts @user
    # puts "userafter"
    # puts params
    # puts params["user"]["password_hash"]
    # puts "after"
    # puts params["users"]["password_hash"]
    @user.password = params["user"]["password_hash"]
    @user.save!
    render :index
    # User.create(username:params["username"],password:params["password"])
  
  end

   private

  def user_params
    params.require(:user).permit(:username, :password_hash)
  end

end