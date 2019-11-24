class Tool < ApplicationRecord
  belongs_to :team
  has_many :item_tools, dependent: :destroy

  def is_in_loan?(loan)
    self.loans.include?(loan)
  end
end
