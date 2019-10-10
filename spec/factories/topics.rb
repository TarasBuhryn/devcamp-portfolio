FactoryBot.define do
  factory :topic do
    title { Faker::Address.community }
  end
end
