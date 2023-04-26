class Manufacturer < ApplicationRecord
    has_many :cars
    has_many :engines, :through => :cars
end
