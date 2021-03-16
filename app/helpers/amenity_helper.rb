module AmenityHelper
    
    def display_header(apartment)
        if apartment
            tag.h3("All #{apartment.unit}'s Amenities")
        else
            tag.h3("All Amenities")
        end
    end
end