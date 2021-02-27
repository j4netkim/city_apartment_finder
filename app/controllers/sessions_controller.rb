class SessionsController < ApplicationController

    def new
    end

    def create
        @owner = Owner.find_by(email: params[:email])
        if @owner && @owner.authenticate(params[:password])
            session[:owner_id] = @owner.id
            redirect_to owner_path(@owner)
        else
            flash[:message] = "Owner failed to save."
            render :new
        end
    end


    def omniauth
        owner = Owner.create_from_omniauth(auth)

        if owner.valid?
            session[:owner_id] = owner.id
            redirect_to owner_path(owner) 
        else
            flash[:message] = owner.errors.full_messages.join("")
            redirect_to log_in_path
        end
    end

    private

    def auth
        request.env['omniauth.auth']
    end
end



