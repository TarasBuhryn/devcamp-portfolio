FactoryBot.define do
  factory :portfolio do
    title { Faker::Address.community }
    body { Faker::Lorem.characters }
  end
end