class AbsencePeriod < ActiveRecord::Base
    belongs_to :user
    
    validates :startdate, date: { after: Proc.new { 10.minutes.ago }, message: 'must be after today' }, on: :create
    validates :enddate, date: { after: :startdate, message: 'must be after the start date' }
end
