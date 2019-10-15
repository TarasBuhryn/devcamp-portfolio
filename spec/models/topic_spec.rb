# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Topic, type: :model do
  subject(:topic) { FactoryBot.build(:topic) }

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it { should validate_presence_of(:title) }
  end

  describe 'Associations' do
    it { should have_many(:blogs) }
  end
end
