class UsersController < ApplicationController

 def index
   @users = User.all

   render json: @users
 end


 def show
   
   @user = User.find_by(params)
   render json: @user
 end



 def create
   @user = User.new(user_params)
   @user.save
   if @user.save
     render json: @user
   else
     render json:({"error": "you suck "})
   end

 end


 private

 def user_params
   params.require(:user).permit(:username)
 end
end
