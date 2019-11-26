class Tool < ApplicationRecord
  belongs_to :team
  has_many :loans, dependent: :destroy
end
