# frozen_string_literal: true

FactoryBot.define do
  factory :skill do
    title { Faker::Address.community }
    percent_utilized { Faker::IDNumber.valid }
  end
end
