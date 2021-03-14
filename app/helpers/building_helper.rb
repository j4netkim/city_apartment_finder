module BuildingHelper

    def display_header(apartment)
        if apartment
            tag.h1("All #{apartment.unit}'s Buildings")
        else
            tag.h2("All Buildings")
        end
    end

    def display_apartment_fields(apartment, f)
        if apartment
            f.hidden_field :apartment_id
        else
            render partial: 'apartment_select', locals: {f: f}
        end
    end
end