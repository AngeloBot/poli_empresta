class Student < ApplicationRecord
	belongs_to :team
	
	def name
		given_name+" "+family_name
	end
	##
	has_secure_password
	##
	
	def self.search(search)
		if search
			where("name like ?", "%#{search}")
		else
			all
		end
	end
end
