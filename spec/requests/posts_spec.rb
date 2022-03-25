require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  it 'redirects to the Posts page and checks the correct placeholder text and status' do
    get '/users/1/posts'

    expect(response).to render_template(:index)

    expect(response.body).to include('Here is a list of posts for a given user')

    expect(response).to have_http_status(200)
  end

  it 'does not render a different template' do
    get '/users/1/posts'

    expect(response).to_not render_template(:show)
  end

  it 'redirects to the Post page and checks the correct placeholder text and status' do
    get '/users/1/posts/1'

    expect(response).to render_template(:show)

    expect(response.body).to include('Here is a post')

    expect(response).to have_http_status(200)
  end

  it 'does not render a different template' do
    get '/users/1/posts/1'

    expect(response).to_not render_template(:index)
  end
end
