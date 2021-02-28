module AmenityHelper
    
    def display_header(apartment)
        if apartment
            tag.h1("All #{apartment.unit}'s Amenities")
        else
            tag.h2("All Amenities")
        end
    end