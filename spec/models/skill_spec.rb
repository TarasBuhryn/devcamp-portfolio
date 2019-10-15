# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Skill, type: :model do
  subject(:skill) { FactoryBot.build(:skill) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  describe 'Validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:percent_utilized) }
  end
end
