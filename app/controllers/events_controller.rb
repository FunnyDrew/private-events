class EventsController < ApplicationController

  before_action :loged_in?, only: :show
  def create
    @event = Event.new(location: params[:event][:location], 
    date: params[:event][:date], creator_id: session[:user_id])
    if @event.save
      redirect_to root_path
    else 
      flash[:error] = @event.errors.full_messages
      render new_event_path
    end
      
  end

  def index
    @events = Event.all  
    @loged = loged_in?  
  end

  def new
    @loged = loged_in?
    @user = User.find(session[:user_id]).name
    @event = Event.new()
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
