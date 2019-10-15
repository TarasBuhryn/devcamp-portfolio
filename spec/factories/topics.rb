# frozen_string_literal: true

FactoryBot.define do
  factory :topic do
    title { Faker::Address.community }
  end
end
