class UsersController < ApplicationController

    def index
        render json: User.all
    end 

    def show

        render json: User.find(params[:id])
      end
    
    
    def create
     @user = User.new(user_params)
      if @user.save
        render json: @user, status: :created #, location:        api_v1_user_url(@user)
       else
        render json: @user.errors, status: :unprocessable_entity
       end
    end

      def new
       User.new
      end 

      def update
        @user = User.find(params[:id])
        @user.update(user_params)
    
        render json: @user
      end
    
    
    
      private
      def user_params
        params.require(:user).permit(:email, :password_digest)
      end

end
