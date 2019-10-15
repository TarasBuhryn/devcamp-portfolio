# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { FactoryBot.build(:user) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  describe 'Associations' do
    it { should validate_presence_of(:name) }
  end

  describe 'Validations' do
    it { should have_many(:comments) }
  end
end
