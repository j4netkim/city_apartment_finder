class Apartment < ApplicationRecord
    belongs_to :building
    has_many :amenity_apartments
    has_many :amenities, through: :amenity_apartments
    validates :unit, presence: true
    validates_uniqueness_of :unit, scope: :building_id
    validates_numericality_of :rent
    accepts_nested_attributes_for :amenity_apartments

    def available_amenities
        Amenity.all - self.amenities
        # get all amenities and show all the amenities this apartment doesnt have
    end


    def amenity_types=(amenity_types)
        amenity_types.values.each do |amenity_type|
            if amenity_type[:name].present?
                ameity = Amenity.find_or_create_by(amenity_type)
                self.amenities << amenity
            end
        end
    end
end




    # def self.lowest_rents
    #     self.order(rent: :desc)
    #  end