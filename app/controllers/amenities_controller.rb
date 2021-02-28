class AmenitiesController < ApplicationController
    
    def index
        if params[:apartment_id] && @apartment = Apartment.find_by_id(params[:apartment_id])
            @amenities = @apartment.amenities
        else
            @amenities = Amenity
        end
    end

    
end