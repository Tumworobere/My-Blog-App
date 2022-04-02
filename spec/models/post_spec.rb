require 'rails_helper'

RSpec.describe Post, type: :model do
  describe ' Post model testing' do
    testuser = User.new(Name: 'User1', Photo: 'https://unsplash.com/photos/Kcxv7Gz7wmw',
                        Bio: 'Software developer from Uganda')
    post = Post.new(user: testuser, Title: 'post title', Text: 'This is my post')

    it 'post user should be testuser' do
      expect(post.user).to be testuser
    end

    it 'Title Should be Present' do
      post.Title = ''
      expect(post).to_not be_valid
    end

    it 'Title Should have max 250 characters' do
      post.Title = 'post title'
      expect(post).to be_valid
      post.Title = 'qwejfh ahfdo auhfoa ufoj jfaofu abhf ouabgf ioau faghfoau fgaofuga fouagfoaufga ouabgf
    fo uahoaufdadaydgaydgawudyawgdkuaydgajkdguyaydgadyadluaidyagdluiaygduiwygfdluiaydgaiudygailywdgailydga
    duahdiuawdghiauwgdh;iawudgy;iauydgh;aiuygwdiydugaiydgaludiaygdulaywfulidyauidyfguidagydiaduygaiydguaiyaugd'
      expect(post).to_not be_valid
    end

    it 'likes counter should be equal or greater than zero' do
      post.likes_counter = -1
      expect(post).to_not be_valid
    end

    it 'comments counter should be equal or greater than zero' do
      post.comments_counter = -1
      expect(post).to_not be_valid
    end

    it 'recent comments should return five last comments' do
      user1 = User.new(Name: 'Useradada', Photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
                       Bio: 'Software developer from lebanon')
      post1 = Post.new(user: user1, Title: 'post', Text: 'This is my rocking post')

      c1 = Comment.create(user: user1, post: post1, Text: 'Comment1')
      c2 = Comment.create(user: user1, post: post1, Text: 'Comment2')
      c3 = Comment.create(user: user1, post: post1, Text: 'Comment3')
      c4 = Comment.create(user: user1, post: post1, Text: 'Comment4')
      c5 = Comment.create(user: user1, post: post1, Text: 'Comment5')
      c6 = Comment.create(user: user1, post: post1, Text: 'Comment6')
      c7 = Comment.create(user: user1, post: post1, Text: 'Comment7')
      expect(post1.recent_comments.length).to eq 5
      expect(post1.recent_comments).to include c7, c6, c5, c4, c3
      expect(post1.recent_comments).not_to include c1, c2
      expect(post1.comments_counter).to eq 7
    end
  end
end
