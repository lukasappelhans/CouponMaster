class PromotionsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @promotions = Promotion.all
        #TODO: Filter dates
    end
    
    def show
    end
    
    def new
        unless current_user.admin? 
            redirect_to "/promotions" and return
        end
        @promotion = Promotion.new
        @promotion.product = Product.new
    end
    
    def create
        @product = Product.new(product_params)
        @promotion = @product.promotions.build(promotion_params)
        if @promotion.save and @product.save
            redirect_to "/promotions" and return
        end
        @promotion.destroy
        @product.destroy
        render 'new'
    end
    

    private
        def promotion_params
            params.require(:promotion).permit(:startdate, :enddate)
        end
        
        def product_params
            params.require(:product).permit(:name, :description, :price)
        end
end
