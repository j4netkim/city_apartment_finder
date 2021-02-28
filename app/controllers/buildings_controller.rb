class BuildingsController < ApplicationController

    def new
        @building = Building.new
    end

    def show
        @building = Building.find(params[:id])
        @building.apartments.present?
    end

    def create
        # byebug
        @building = current_owner.buildings.build(building_params)
        if @building.save
            redirect_to building_path(@building)
        else
            flash[:message] = "Could not be saved."
            render :new
        end
    end

    def update 
        # @url = owner_building_path
        @building = Building.find(params[:id])
        @building.update_attributes(building_params)
        if @building.save
            flash[:message] = "Building saved."
            redirect_to new_building_apartment_path(@building.owner, @building)
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