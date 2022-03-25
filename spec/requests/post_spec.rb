require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:example) { get user_posts_path(10) }

    it 'checks if action returns a correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'checks if action rendered a correct template' do
      expect(response).to render_template('index')
    end

    it 'checks if correct placeholder text is shown' do
      expect(response.body).to include('Post #index from users')
    end
  end

  describe 'GET /show' do
    before(:example) { get user_post_path(10, 0o5) }

    it 'checks if action returns a correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'checks if action rendered a correct template' do
      expect(response).to render_template('show')
    end

    it 'checks if correct placeholder text is shown' do
      expect(response.body).to include('Post #users content')
    end
  end
end
