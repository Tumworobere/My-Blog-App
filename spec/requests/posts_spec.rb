require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:each) { get '/users/:user_id/posts' }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'render a specific template' do
      expect(response).to render_template('posts/index')
    end

    it 'test placeholder inside template' do
      expect(response.body).to include('show all posts of a user')
    end
  end
  describe 'GET /show' do
    before(:each) { get '/users/:user_id/posts/55' }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'render a specific template' do
      expect(response).to render_template('posts/show')
    end

    it 'test placeholder inside template' do
      expect(response.body).to include('show post info')
    end
  end
end
