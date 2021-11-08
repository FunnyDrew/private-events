class User < ApplicationRecord
  validates :name, presence: true, length: {minimum: 4}

  has_many :created_events, foreign_key: :creator_id, class_name: "Event"
  has_many :event_subscribings, foreign_key: :event_attendee_id
  has_many :attendend_events, through: :event_subscribings
end
