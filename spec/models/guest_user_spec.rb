require 'rails_helper'

RSpec.describe GuestUser, type: :model do
  it 'should contain required fields' do
    expect(subject).to have_attribute :name 
    expect(subject).to have_attribute :email
    expect(subject).to have_attribute :id
  end
end