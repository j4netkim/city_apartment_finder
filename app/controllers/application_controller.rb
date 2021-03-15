
class ApplicationController < ActionController::Base
    
    helper_method :current_owner

    def log_in(owner)
        session[:owner_id] = owner.id
    end

    def current_owner
        @current_owner ||= Owner.find_by(id: session[:owner_id]) if session[:owner_id]
    end
end
