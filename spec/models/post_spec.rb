require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Post model' do
    user = User.create(name: 'Tannah', bio: 'Software Dev')
    subject do
      Post.new(title: 'New post', text: 'Hi there', user_id: user)
    end
    before { subject.save }

    it 'check if the title is not blank' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'check if the title is not exceeding 250 characters' do
      subject.title = 'Hello world Hello world Hello world Hello world Hello world Hello world Hello world Hello world
      Hello world Hello world Hello world Hello world Hello world Hello world Hello world Hello world Hello world Hello
      world Hello world Hello world Hello world Hello world Hello world Hello world Hello world Hello world Hello world'
      expect(subject).to_not be_valid
    end

    it 'validates that likes counter is greater than or equal to 0' do
      subject.likes_counter = -1
      expect(subject).to_not be_valid
    end

    it 'loads only the recent 5 comments' do
      expect(subject.recent_comments).to eq(subject.comments.last(5))
    end
  end
end