require 'rails_helper'

RSpec.describe Technology, type: :model do
  subject(:technology) { FactoryBot.build(:technology) }

	it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  describe "Associations" do
    it { should belong_to(:portfolio) }
  end
end