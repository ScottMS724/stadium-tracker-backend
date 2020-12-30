class Stadium < ApplicationRecord
    self.table_name = 'stadium'
    belongs_to :user 
    has_many :visits 
    validates :name, uniqueness: true
    validates :user 
end
