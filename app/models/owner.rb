class Owner < ApplicationRecord
    has_many :buildings
    has_many :apartments, through: :buildings
    validates :name, presence: true
end
