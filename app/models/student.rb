class Student < ApplicationRecord
	belongs_to :team
	mount_uploader :avatar, ImageUploader

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

end
