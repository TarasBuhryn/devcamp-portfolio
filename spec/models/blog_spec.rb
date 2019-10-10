require 'rails_helper'

RSpec.describe Blog, type: :model do
  subject(:blog) { FactoryBot.build(:blog) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  describe "Validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:topic_id) }
  end

  describe "Associations" do
    it { should belong_to(:topic).optional }
    it { should have_many(:comments) }
  end
end