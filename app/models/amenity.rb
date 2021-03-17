class Amenity < ApplicationRecord::Base
    has_many :amenity_apartments
    has_many :apartments, through: :amenity_apartments
    scope :alphabetical, lambda { order(:name) }

end
