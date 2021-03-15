class Owner < ApplicationRecord
    has_many :buildings
    has_many :apartments, through: :buildings
    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true

    has_secure_password
    # adds password and password confirmation attribute 
    # validates that a password is present 

    def self.create_from_omniauth(auth)
        Owner.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.username = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(20)
        end
    end
end
