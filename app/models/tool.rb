class Tool < ApplicationRecord
	# every tool id linked to a student, through student_id
	belongs_to :student
end
