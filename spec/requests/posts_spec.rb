require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  before :each do
    @user1 = User.create(Name: 'Sammy', Photo: 'imgurl', Bio: 'text')
    @post1 = @user1.posts.create(user: @user1, Title: 'anything', Text: 'this is my post')
  end

  describe 'GET /index' do
    before(:each) { get user_posts_path(@user1, @post1) }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'render a specific template' do
      expect(response).to render_template(:index)
    end
  end
end
