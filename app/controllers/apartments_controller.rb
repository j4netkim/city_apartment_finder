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
        if params[:amenity_id] && @amenity = Amenity.find_by_id(params[:amenity_id])
            @apartment = @amenity.apartment.build
        else
            @amenity = Amenity.new
        end
    end 
end