# frozen_string_literal: true

FactoryBot.define do
  factory :blog do
    title { Faker::Address.community }
    body { Faker::Lorem.characters }
    topic_id { Faker::IDNumber.valid }
  end
end
