class AbsencePeriodController < ApplicationController
    before_action :authenticate_user!
    
    def create
    end
    
    def new
    end
    
    def index
        @periods = AbsencePeriod.all
    end
    
    def show
    end
    
    def destroy
    end
    
    def update
    end
end
