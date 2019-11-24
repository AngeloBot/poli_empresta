class Loan < ApplicationRecord
  has_many :item_tools, dependent: :destroy

  def has_tool?(tool)
    self.tools.include?(tool)
  end

  def tool_amount(tool)

  end

end
