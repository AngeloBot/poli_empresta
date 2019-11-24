class Team < ApplicationRecord
  has_many :tools, dependent: :destroy
end
