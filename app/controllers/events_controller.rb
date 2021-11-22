class EventsController < ApplicationController
  def index
    @events = Event.all  
    @loged = user_loged_in?  
  end
end
