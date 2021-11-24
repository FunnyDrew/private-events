class Event < ApplicationRecord
  validates :location, presence: true
  validates :date, presence: true

  belongs_to :creator, class_name: "User"
  has_many :event_subscribings, foreign_key: :attendend_event_id
  has_many :attendees, through: :event_subscribings, source: :event_attendee
end
