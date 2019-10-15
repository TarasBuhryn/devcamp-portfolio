# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Portfolio, type: :model do
  subject(:portfolio) { FactoryBot.build(:portfolio) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  describe 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
  end

  describe 'Associations' do
    it { should have_many(:technologies) }
  end
end
