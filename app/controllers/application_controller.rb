
class ApplicationController < ActionController::Base
    helper_method :current_owner


    private

    def current_owner
        @current_owner ||= Owner.find(session[:owner_id]) if session[:owner_id]
    end
end
