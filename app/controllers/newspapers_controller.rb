class NewspapersController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @newspapers = Newspaper.all
    end
end
