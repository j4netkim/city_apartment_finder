class Apartment < ApplicationRecord
    belongs_to :building
    has_many :apartment_amenities
    has_many :amenities, through: :apartment_amenities
    validates :unit, presence: true
    validates_uniqueness_of :unit, scope: :building_id
    validates_numericality_of :rent
end
