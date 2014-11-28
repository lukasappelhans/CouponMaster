class AbsencePeriodController < ApplicationController
    before_action :authenticate_user!
    
    def create
        @absence_period = current_user.absence_periods.build(absence_period_params)
    end
    
    def new
        @absence_period = AbsencePeriod.new
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
    

    private
        def absence_period_params
            params.require(:absence_period).permit(:startdate, :enddate)
        end
end
