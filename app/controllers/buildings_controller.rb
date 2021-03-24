class BuildingsController < ApplicationController

    def index
        @buildings = Building.all
    end
    
    def new
        @building = Building.new
    end

    def show
        @building = Building.find(params[:id])
        @building.apartments.present?
    end

    def create
        @building = current_owner.buildings.build(building_params)
        @building.owner_id = current_owner.id
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
            redirect_to building_path(@building)
        else
            flash[:message] = "Building failed to save."
            render :show
        end
    end

    def destroy
        building = Building.find(params[:id])
        building.destroy
        redirect_to buildings_path
    end

    private

    def building_params
        params.require(:building).permit(:name, :address, :owner_id)
    end

end 