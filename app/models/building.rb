class Building < ApplicationRecord
    belongs_to :owner
    has_many :apartments
    validates :name, presence: true

end
