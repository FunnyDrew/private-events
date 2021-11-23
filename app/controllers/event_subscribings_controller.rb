class EventSubscribingsController < ApplicationController
  def create
    event_id = params[:event_id]
    @event_subscribing = EventSubscribing.new(attendend_event_id: event_id, event_attendee_id: session[:user_id])
    #render_to_string @event_subscribing
    if @event_subscribing.save
      redirect_to events_path, action: "show", id: event_id
      else
        redirect_to events_path(event_id)
      end      
    end

  def delete
  end
end
