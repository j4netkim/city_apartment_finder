class SessionsController < ApplicationController

    def new
        @owner = Owner.new
    end
    
    def create
        @owner = Owner.find_by(email: params[:owner][:email])
        if @owner && @owner.authenticate(params[:owner][:password])
            session[:owner_id] = @owner.id
            redirect_to owner_path(@owner.id)
        else
            flash[:message] = "Invalid email/password."
            @owner = Owner.new
            render :new
        end
    end
    
    def destroy
        session.delete :owner_id
        redirect_to log_in_path
    end


    def omniauth
        @owner = Owner.create_from_omniauth(auth)
        # if owner.valid?
        #     owner.save
        #     session[:owner_id] = owner.id
        #     redirect_to owner_path(owner) 
        # else
        #     flash[:message] = owner.errors.full_messages.join("")
        #     redirect_to log_in_path
        @owner.save
        session[:owner_id] = @owner.id
        redirect_to owner_path(@owner)
    end



    private

    def auth
        request.env['omniauth.auth']
    end
end



