class Tool < ApplicationRecord
  belongs_to :team, dependent: :destroy
end
