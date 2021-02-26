class UsersController < ApplicationController
    
    def new
        @user = User.new
    end 

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:error] = @user.errors.full_messages_sentence
            render :new
        end
    end

    def show
    end

    private

    def user_params
    end
end
