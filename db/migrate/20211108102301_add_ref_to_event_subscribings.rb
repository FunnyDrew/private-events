class AddRefToEventSubscribings < ActiveRecord::Migration[6.1]
  def change
    create_table :event_subscribings do |t|

    t.timestamps
    end  
  
    add_reference :event_subscribings, :event_attendee, foreign_key: {to_table: :users}, index: false
    add_reference :event_subscribings, :attendend_event, foreign_key: {to_table: :events}, index: false
  end
end
