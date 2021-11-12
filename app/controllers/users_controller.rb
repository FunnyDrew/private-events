class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        name = params[:name]
        @user = User.new(name: name)

        if @user.save
            session[:usere_id]=nil
            redirect_to root_path
        else
            flas[:errors] = @user.errors.full_messages
            redirect_to root_path
        end
    
    end

end
