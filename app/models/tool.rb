class Tool < ApplicationRecord
  belongs_to :team
  has_many :loans, dependent: :destroy

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
