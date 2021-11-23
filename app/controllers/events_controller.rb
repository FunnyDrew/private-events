class EventsController < ApplicationController

  before_action :loged_in?, only: :show
  def index
    @events = Event.all  
    @loged = loged_in?  
  end

  def show
    @event = Event.find(params[:id])
    @creator = @event.creator.name
    @attendees = @event.attendees.to_a
    @subscribed = user_subscribed?

  end

  private
  def loged_in?
    user_loged_in?
  end

  def user_subscribed?
    !@attendees.select{|user| user[:id] == session[:user_id]}.empty?
  end
end
