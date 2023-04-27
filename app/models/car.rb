class Car < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :engine, :optional => true
    has_many :trims
    belongs_to :manufacturer, :optional => true
end
