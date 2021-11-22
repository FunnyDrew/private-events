class ApplicationController < ActionController::Base
    def user_loged_in?
        session[:user_id] != nil
    end
end
