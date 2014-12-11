class Promotion < ActiveRecord::Base
    belongs_to :product
    
    validates :enddate, date: { after: :startdate, message: 'must be after the start date' }
end
