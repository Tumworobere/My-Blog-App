require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:each) { get users_path }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'render a specfic template' do
      expect(response).to render_template('users/index')
    end

    it 'test placeholder inside template' do
      expect(response.body).to include('show all users')
    end
  end

  describe 'GET /show' do
    before(:each) { get user_path(10) }

    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'render a specfic template' do
      expect(response).to render_template('users/show')
    end

    it 'Test placeholder inside template' do
      expect(response.body).to include('show user info')
    end
  end
end
