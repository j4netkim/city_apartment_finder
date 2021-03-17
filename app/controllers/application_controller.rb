
class ApplicationController < ActionController::Base
    helper_method :current_owner
    helper_method :logged_in?
    # before_action :debug

    def debug
      byebug
    end

    def current_owner
        @current_owner ||= Owner.find_by(id: session[:owner_id]) if session[:owner_id] 
    end

    def logged_in?
        !current_owner.nil?
    end
end
