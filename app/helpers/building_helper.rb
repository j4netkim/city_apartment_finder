module BuildingHelper

    def display_header(apartment)
        if apartment
            tag.h1("All #{apartment.unit}'s Buildings")
        else
            tag.h2("All Buildings")
        end
    end
end