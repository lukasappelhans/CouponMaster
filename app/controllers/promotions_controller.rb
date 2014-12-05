class PromotionsController < ApplicationController
    before_action :authenticate_user!
    
    def index
    end
    
    def show
    end
    
    def new
        unless current_user.admin? 
            redirect_to "/promotions" and return
        end
    end
    
    def create
    end
end
