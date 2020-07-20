class Post < ApplicationRecord
  # アソシエーション
  belongs_to :user
  has_many :foods

  



end
