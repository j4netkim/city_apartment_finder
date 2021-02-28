class BuildingsController < ApplicationController

    def index
        if params[:apartment_id] && @apartment = Apartment.find_by_id(params[:apartment_id])
            @buildings = @apartment.buildings.ordered_by_rent
        else
            @buildings = Building.ordered_by_rent
        end
    end
    
    def new
        if params[:apartment_id] && @apartment = Apartment.find_by_id(params[:apartment_id])
            @buildings = @apartment.buildings.build
        else
            @building = Building.new
            @buildings = Building.ordered_by_rent
        end
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