class AmenityApartmentsController < ApplicationController
    
    def new
        @apartment = Apartment.find(params[:apartment_id])
        @amenity_apartment = AmenityApartment.new(apartment_id: params[:apartment_id])
    end

    def create
        @amenity_apartment = AmenityApartment.new(
            apartment_id: params[:apartment_id],
            amenity_id: params[:amenity_apartment][:amenity].to_i
        )
        
        if @amenity_apartment.save
            redirect_to apartment_path(params[:apartment_id])
        else
            @apartment = Apartment.find(params[:apartment_id])
            flash[:message] = "Could not be saved."
            render :new
        end
    end


    def destroy
        amenity_apartment = AmenityApartment.find(params[:id])
        apartment_id = amenity_apartment.apartment_id
        amenity_apartment.destroy
        redirect_to apartment_path(apartment_id)
    end
end