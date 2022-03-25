require 'rails_helper'

RSpec.describe 'Users', type: :request do
  it 'redirects to the Users page and checks the correct placeholder text and status' do
    get '/users'

    expect(response).to render_template(:index)

    expect(response.body).to include('Here is a list of users')

    expect(response).to have_http_status(200)
  end

  it 'does not render a different template' do
    get '/users'

    expect(response).to_not render_template(:show)
  end

  it 'redirects to the User page and checks the correct placeholder text and status' do
    get '/users/1'

    expect(response).to render_template(:show)

    expect(response.body).to include('Here is a user')

    expect(response).to have_http_status(200)
  end

  it 'does not render a different template' do
    get '/users/1'

    expect(response).to_not render_template(:index)
  end
end
