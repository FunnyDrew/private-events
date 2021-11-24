class EventSubscribingsController < ApplicationController
  def create
    event_id = params[:event_id]
    @event_subscribing = EventSubscribing.new(attendend_event_id: event_id, event_attendee_id: session[:user_id])
    #render_to_string @event_subscribing
    if @event_subscribing.save
      redirect_to event_path(id: event_id)
      else
        redirect_to event_path, action: "show", id: event_id
      end      
    end

  def delete
    event_id = params[:event_id]
    @event_subscribing = EventSubscribing.where(attendend_event_id: event_id, event_attendee_id: session[:user_id])
    @event_subscribing.destroy_all
    redirect_to event_path(id: event_id)
  end
end
