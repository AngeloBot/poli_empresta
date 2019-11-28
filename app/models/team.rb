class Team < ApplicationRecord
  has_many :tools, dependent: :destroy
  has_many :students, dependent: :destroy

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
