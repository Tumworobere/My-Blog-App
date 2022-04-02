require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'add some comments' do
    author = User.new(name: 'Annah', photo: 'Tom.png', bio: 'Software Developer from Uganda', posts_counter: 0)
    post = Post.new(title: 'New post', text: 'Hello World', user: author, likes_counter: 0, comments_counter: 0)
    post.save!

    comment_creator = User.new(name: 'Tumworobere', photo: 'Tom.png', bio: 'Microverse Student', posts_counter: 0)
    post.comments.create!(text: 'Hello Uganda', user: comment_creator)
    post.comments.create!(text: 'This is my second post', user: comment_creator)
    expect(post.comments.length).to eql(2)
  end
end
