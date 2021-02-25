class ApartmentsController < ApplicationController
    def index
        @apartments = Apartment.all
    end

    def show
    end
end