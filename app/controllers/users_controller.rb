class UsersController < ApplicationController

 def index
   @users = User.all
   
   render json: @users
 end


 def show
   @user = User.find(params[:id])
   render json: @user
 end



 def create
   @user = User.new(user_params)

   if @user.save
     render json: @user
   else
     render json:({"error": "you suck "})
   end

 end

end
