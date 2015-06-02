require 'rails_helper'

RSpec.describe Question, :type => :model do
  it { should validate_presence_of :title }

  it { should validate_presence_of :body }

  # it 'validates presence of title' do
  #   expect(Question.new(body: 'qwerty')).to_not be_valid
  # end

  # it 'validates presence of body' do
  #   expect(Question.new(title: 'qwerty')).to_not be_valid
  # end
end
