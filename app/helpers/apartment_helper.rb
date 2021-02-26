module ApartmentHelper
    def display_header(amenity)
        if amenity
            tag.h2("All {amenity.name}'s Apartments.")
        else
            tag.h2("All Apartments.")
        end
    end
end