# frozen_string_literal: true

FactoryBot.define do
  factory :technology do
    name { Faker::Name.name }
    portfolio
  end
end
