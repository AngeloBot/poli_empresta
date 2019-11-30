class Tool < ApplicationRecord
	belongs_to :team

	def self.search(search)
		if search
			where("name like ?", "%#{search}")
		else
			all
		end

	end
end
