class ContentsController < ApplicationController

    def  create
        @restaurant = Restaurant.find(params[:restaurant_id])
        @content = @restaurant.contents.build(content_params)
        @content.user = current_user
        @content.save!
        redirect_to restaurant_path(@restaurant)
      end
    
      private
    
      def content_params
        params.require(:content).permit(:content)
      end
end
