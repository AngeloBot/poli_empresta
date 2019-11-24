class Loan < ApplicationRecord
  has_many :item_tools, dependent: :destroy
  belongs_to :tool

  def has_tool?(tool)
    self.tools.include?(tool)
  end

  def tool_amount()
    Self.item_tools.find(params[])
  end

end
