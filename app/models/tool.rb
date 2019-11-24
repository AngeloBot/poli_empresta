class Tool < ApplicationRecord
  belongs_to :team
  has_many :item_tools, dependent: :destroy
  has_many :loans, dependent: :destroy
end
