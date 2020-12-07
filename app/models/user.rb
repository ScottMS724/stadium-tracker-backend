class User < ApplicationRecord
    has_secure_password 
    has_many :stadiums
    has_many :visits, through: :stadiums 
    validates :username, uniqueness: true
end
