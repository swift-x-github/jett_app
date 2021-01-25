class SearchesController < ApplicationController

    def new
        @search = Search.new
    end
        
    def create
        @search = Search.new(search_params)
         if @search.save
             redirect_to @search
         else
             redirect_to root_url
         end
    end 
        
        
    def show
        @search = Search.find(params[:id])
    end
        
    private
    
    def search_params
        params.require(:search).permit(:keywords, :min_price, :max_price, :prop_deteils_property_type_id, :prop_deteils_property_status_id  )
    end
        
  
end
