class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_many :likes


  def likers
    self.likes.map { |like| like.user }
  end
end
