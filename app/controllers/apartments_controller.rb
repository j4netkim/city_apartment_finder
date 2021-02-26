class ApartmentsController < ApplicationController
    def index
        @apartments = Apartment.lowest_rents
    end

    def show
        # @apartment = Apartment.find(params[:id])
        # @url = owner_building_path
    end
end