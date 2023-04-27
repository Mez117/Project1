class Car < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :engine, :optional => true
    has_one :trim
    belongs_to :manufacturer, :optional => true
end
