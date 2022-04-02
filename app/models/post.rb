class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  after_save :update_posts_counter

  validates :Title, presence: true
  validates :Title, length: { maximum: 250 }
  validates :likes_counter, numericality: { greater_than_or_equal_to: 0 }
  validates :comments_counter, numericality: { greater_than_or_equal_to: 0 }
  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end

  def update_posts_counter
    user.increment!(:posts_counter)
  end
end
