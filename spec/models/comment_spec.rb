require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject(:comment) { FactoryBot.build(:comment) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  describe "Validations" do
    it { should validate_presence_of(:content) }
    it { should validate_length_of(:content).is_at_least(10) } 
  end

  describe "Associations" do
    it { should belong_to(:user) }
    it { should belong_to(:blog) }
  end
end