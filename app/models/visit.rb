class Visit < ApplicationRecord
    belongs_to :stadium 
    validates :description, uniqueness: true
end
