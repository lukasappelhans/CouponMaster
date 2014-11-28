class AbsencePeriodsController < ApplicationController
    before_action :authenticate_user!
    
    def create
        @absence_period = current_user.absence_periods.build(absence_period_params)
        @absence_period.save
        redirect_to @absence_period
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
    
    def edit
        @absence_period = current_user.absence_periods.find(params[:id])
    end
    
    def update
        @period = current_user.absence_periods.find(params[:id])
 
        if @period.update(absence_period_params)
            redirect_to @period
        else
            render 'edit'
        end
    end
    

    private
        def absence_period_params
            params.require(:absence_period).permit(:startdate, :enddate)
        end
end
