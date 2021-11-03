class Event < ApplicationRecord
  validates :location, presence: true
  
end
