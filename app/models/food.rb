class Food < ApplicationRecord
  validates :name, presence: true

  #クラスmethod
  def self.search(search)
    if search
      Food.where('name LIKE(?)', "%#{search}%")
    else
      Food.all
    end
  end
end
