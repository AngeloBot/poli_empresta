class Student < ApplicationRecord
	# a student can have many tools
	has_many :tools, dependent: :destroy
	def name
		given_name+" "+family_name
	end

end
