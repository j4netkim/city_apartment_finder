class AmenitiesController < ApplicationController
    
    def index
        if params[:apartment_id] && @apartment = Apartment.find_by_id(params[:apartment_id])
            @amenities = @apartment.amenities.ordered_by_rent
        else
            @amenities = Amenity.ordered_by_rent
        end
    end

    def new
        if params[:apartment_id] && @apartment = Apartment.find_by_id(params[:apartment_id])
            @amenities = @apartment.amenities.build
        else
            @amenity = @Amenity.new
            @amenities = Amenity.ordered_by_rent
    end
end