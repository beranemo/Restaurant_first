class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        @contented_restaurants = @user.restaurants.uniq
    end

    def edit
        @user = User.find(params[:id])
        unless @user == current_user
          redirect_to user_path(@user)
        end
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      redirect_to user_path(@user)    
    end
      
    def user_params
      params.require(:user).permit(:name, :intro, :avatar)
    end

  end