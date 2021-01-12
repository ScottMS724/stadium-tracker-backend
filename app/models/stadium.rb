class Stadium < ApplicationRecord
    self.table_name = 'stadium'
    belongs_to :user 
    has_many :visits 

    validates :name, uniqueness: true
    validates :name, presence: true
    validates :user, presence: true
end
