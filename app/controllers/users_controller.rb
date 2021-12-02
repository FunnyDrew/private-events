class UsersController < ApplicationController

    def index
        @user = User.find(session[:user_id])
        @event_user_attended = @user.attendend_events
        @created_events = @user.created_events
    end

    def new
        @user = User.new
    end

    def create
        name = white_data[:name]
        @user = User.new(name: name)

        if @user.save
            session[:user_id]=nil
            redirect_to root_path
        else
            flash[:error] = @user.errors.full_messages
            redirect_to root_path
        end    
    end

    private
    def white_data
        params.require(:user).permit(:name)
    end

end
