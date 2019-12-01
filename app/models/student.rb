class Student < ApplicationRecord
	belongs_to :team
	has_secure_password

	def name
		given_name+" "+family_name
	end
	
	def self.search(search)
		if search
			where("name like ?", "%#{search}")
		else
			all
		end
	end
	#método pra retornar booleana pra caso o Student é um admin de equipe.
	def admin
		admin
	end
end
