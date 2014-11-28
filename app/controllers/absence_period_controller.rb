class AbsencePeriodController < ApplicationController
    before_action :authenticate_user!
    
    def create
    end
    
    def new
    end
    
    def index
        @periods = current_user.absence_periods.all
    end
    
    def show
        @period = current_user.absence_periods.find(params[:id])
    end
    
    def destroy
    end
    
    def update
    end
end
