class ApartmentsController < ApplicationController
    
    def index
        if params[:amenity_id] && @amenity = Amenity.find_by_id(params[:amenity_id])
            @apartments = @amenity.apartments
        else
            @apartments = Apartment.lowest_rents
        end
    end

    def show
        @apartment = Apartment.find(params[:id])
    end

    def new
        # if params[:amenity_id] && @amenity = Amenity.find_by_id(params[:amenity_id])
        #     @apartment = @amenity.apartment.build
        # else
        #     @amenity = Amenity.new
        # end
        @building = Building.find(params[:building_id])
        @apartment = Apartment.new(building_id: params[:building_id])
    end 

    def create
        @apartment = Apartment.new(apartment_params)
        @apartment.building_id = params[:building_id]
        if @apartment.save
            redirect_to apartment_path(@apartment)
        else
            flash[:message] = "Could not be saved."
            render :new
        end
    end

    private

    def apartment_params
        params.require(:apartment).permit(:unit, :rent, :occupants, :description, :building_id)
    end
end