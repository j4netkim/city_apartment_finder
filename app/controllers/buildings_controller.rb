class BuildingsController < ApplicationController

    def new
        @owner = Owner.find(params[:owner_id])
        @building = Building.new
        @url = new_owner_building_path(@owner)
    end

    def show
        @building = Building.find(params[:id])
        @url = owner_building_path
        @building.apartments.present?
    end

    def create
        @owner = Owner.find(params[:id])
        @building = @Owner.buildings.build
        @building.update_attributes(building_params)
        if @building.save
            redirect_to owner_building_path(@building.owner, @building)
        else
            flash[:message] = "Could not be saved."
            redirect_to new_owner_building_path(@owner)
        end
    end

    def update 
        @url = owner_building_path
        @building = Building.find(params[:id])
        @building.update_attributes(building_params)
        if @building.save
            flash[:message] = "Building saved."
            redirect_to owner_building_path(@building.owner, @building)
        else
            flash[:message] = "Building failed to save."
            render :show
        end
    end

    private

    def building_params
        params.require(:building).permit(:name, :address, :owner_id)
    end

end 