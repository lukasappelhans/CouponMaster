class Product < ActiveRecord::Base
    has_many :promotions, :dependent => :destroy
    has_many :newspapers
    
    validates :name, length: { minimum: 5 }
    validates :description, length: { minimum: 15 }
    validates :price, :numericality => {:greater_than => 0}
end
