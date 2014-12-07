class Category < ActiveRecord::Base
	has_many :shoes
	validates :name, uniqueness: true
	def self.active
     where(active: true)
    end 
end
