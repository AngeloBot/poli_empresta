class Student < ApplicationRecord
	belongs_to :team
	
	def name
		given_name+" "+family_name
	end
	##
	has_secure_password
	##
end
