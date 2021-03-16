module ApartmentHelper
    def display_header(amenity)
        if amenity
            tag.h3("All {amenity.name}'s Apartments.")
        else
            tag.h3("All Apartments.")
        end
    end
end