class OwnersController < ApplicationController
    
    def all
        @owners = Owner.all
        render :all
    end

    def new
        @owner = Owner.new
    end

    def create
        @owner = Owner.new(owner_params)
        if @owner.save
            session[:owner_id] = @owner.id
            redirect_to owner_path(@owner)
        else
            flash[:message] = "Owner failed to save."
            render :new
        end
    end

    def show
        @owner = Owner.find(params[:id])
    end

    private

    def owner_params
        params.require(:owner).permit(:name, :email, :password)
    end
end