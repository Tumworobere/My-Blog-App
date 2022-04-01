require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /posts' do
    before(:each) { get '/users/:user_id/posts' }
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the index template' do
      expect(response).to render_template('index')
    end

    it 'response body includes correct placeholder text.' do
      expect(response.body).to include('show all posts of user')
    end
  end

  describe 'GET /show' do
    before(:each) { get '/users/:user_id/posts/show' }
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the show template' do
      expect(response).to render_template('show')
    end

    it 'response body includes correct placeholder text.' do
      expect(response.body).to include('show all posts info')
    end
  end
end
