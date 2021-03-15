module SessionsHelper
    def logged_in?
        !current_owner.nil?
    end
end
