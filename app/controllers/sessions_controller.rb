class SessionsController < ApplicationController

    def omniauth
        owner = Owner.create_from_omniauth(auth)

        if owner.valid?
            session[:owner_id] = owner.id
            redirect_to apartments_path 
        else
            flash[:message] = user.errors.full_messages.join("")
            redirect_to apartments_path
        end
    end

    private

    def auth
        request.env['omniauth.auth']
    end
end



