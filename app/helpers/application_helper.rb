module ApplicationHelper


    def current_owner
        @current_owner ||= Owner.find_by(id: session[:owner_id]) if session[:owner_id] 
    end

    def logged_in?
        !!current_owner
    end
end
