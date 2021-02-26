class Owner < ApplicationRecord
    # belongs_to :user
    has_many :buildings
    has_many :apartments, through: :buildings
    validates :name, presence: true

    has_secure_password
    # adds password and password confirmation attribute 
    # validates that a password is present 

    def self.create_from_omniauth(auth)
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.username = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(20)
        end
    end

    def self.set_owner
        self.role = :owner
        self.save
    end
end
