class Student < ApplicationRecord
	belongs_to :team
	has_secure_password

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
	
	#método pra retornar booleana pra caso o Student é um admin de equipe.
	def admin
		admin
	end
end
