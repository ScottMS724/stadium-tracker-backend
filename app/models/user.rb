class User < ApplicationRecord
    has_secure_password 
    has_many :stadiums
    has_many :visits, through: :stadiums 
    validates :username, uniqueness: true
    validates :username, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :name, :username, presence: true 
end
