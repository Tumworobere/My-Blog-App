require 'rails_helper'

RSpec.describe Like, type: :model do
  it 'tests that Like model is created correctly' do
    like = Like.new
    like.build_user(name: 'Tannah')
    like.build_post(text: '')
    expect(like).to be_valid
  end

  it 'updates a posts likes correctly' do
    user = User.new(name: 'Annah', posts_counter: 0)
    user2 = User.create!(name: 'Tumworobere', posts_counter: 0)
    post = user2.posts.create!(title: 'Post1', text: 'This is a post', likes_counter: 0, comments_counter: 0)
    post.likes.create!(user:)
    post.likes_counter = post.likes.length
    expect(post.likes_counter).to eql(1)
  end
end
