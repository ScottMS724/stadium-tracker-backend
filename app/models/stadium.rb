class Stadium < ApplicationRecord
    self.table_name = 'stadium'
    belongs_to :user 
    validates :name, uniqueness: true
end
