class SessionsController < ApplicationController
    def into
        user = User.find_by(name: params[:name])
        if user
            session[:user_id] = user.id 
            redirect_to root_path
        else
            flash[:error] = "Wrong name of registered user"
            render sessions_login_path
        end
    end

    def logout
        session[:user_id] = nil
        redirect_to root_path
    end
end
