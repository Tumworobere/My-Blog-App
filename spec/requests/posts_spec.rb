require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    #    user = User.create('name' => 'Mara', 'bio' => 'bio', 'photo' => 'Tom.png', 'posts_counter' => 0)
    before(:each) { get '/users/68/posts' }

    it 'checks if action returns correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'checks if action rendered a correct template' do
      expect(response).to render_template('index')
    end

    it 'checks if correct placeholder is shown' do
      expect(response.body).to include('Post for a given user')
    end
  end
end
