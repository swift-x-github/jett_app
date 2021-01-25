class MainPageController < ApplicationController
    def index
        
        @properties =  Property.all.order('created_at DESC').page(params[:page]).per_page(2)
        
      end
end
