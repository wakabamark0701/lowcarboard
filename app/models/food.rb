class Food < ApplicationRecord
  validates :name, presence: true

    # # アソシエーション
    # belongs_to :post

  #クラスmethod
  def self.search(search)
    if search
      Food.where('name LIKE(?)', "%#{search}%")
    else
      Food.all
    end
  end
end
