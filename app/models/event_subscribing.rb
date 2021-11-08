class EventSubscribing < ApplicationRecord
  belongs_to :event_attendee, class_name: "User"
  belongs_to :attendend_event, class_name: "Event"
end
