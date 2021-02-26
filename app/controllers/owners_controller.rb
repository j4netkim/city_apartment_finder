class OwnersController < ApplicationController
    def all
        @owners = Owner.all
    end

    def new
        @owner = Owner.new
    end

    def create
        @owner = Owner.new(name: owner_params[:name], user: current_user)
        if @owner.save
            @owner.user.set_owner
            redirect_to owner_path(@owner)
        else
            flash[:message] = "Owner failed to save."
            render :new
        end
    end

    def show
        @owner = Owner.find(params[:id])
        @buildings = @Owner.buildings.all
    end

    private

    def owner_params
        params.require(:owner).permit(:name)
    end
end