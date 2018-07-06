class RestaurantsController < ApplicationController
    
    def index
        @restaurants = Restaurant.all
        @restautants = Restaurant.page(params[:page]).per(9)
    end
    
end
