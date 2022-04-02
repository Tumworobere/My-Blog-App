require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'Like model' do
    user1 = User.new(Name: 'Annah', Photo: 'https://unsplash.com/photos/Kcxv7Gz7wmw',
                     Bio: 'Software developer from Uganda')
    post1 = Post.new(user: user1, Title: 'post', Text: 'This is my rocking post')
    l1 = Like.new(user: user1, post: post1)
    l1.update_likes_counter

    it 'check if likes counter works' do
      current = post1.likes_counter
      l2 = Like.new(user: user1, post: post1)
      l2.update_likes_counter
      expect(post1.likes_counter).to eq(current + 1)
    end
  end
end
