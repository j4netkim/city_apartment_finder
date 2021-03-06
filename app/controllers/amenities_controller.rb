class AmenitiesController < ApplicationController
    
    def index
        @amenities = Amenity.alphabetical
    end

    def new
        if params[:apartment_id] && @apartment = Apartment.find_by_id(params[:apartment_id])
            @amenities = @apartment.amenities.build
        else
            @amenity = @Amenity.new
            @amenities = Amenity.alphabetical
        end
    end
end

# build wont create record in database just create new obj in
# memory so view can take object and display for a form