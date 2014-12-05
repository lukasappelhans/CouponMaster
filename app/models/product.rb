class Product < ActiveRecord::Base
    has_many :promotions
    has_many :newspapers
end
