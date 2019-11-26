class Team < ApplicationRecord
  has_many :tools, dependent: :destroy
  has_many :students, dependent: :destroy
end
