class Book < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
    
  
  validates :title, presence: true
  validates :body, length: { maximum: 200 }, presence: true

end
