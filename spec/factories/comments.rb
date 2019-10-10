FactoryBot.define do
  factory :comment do
    content { Faker::Lorem.characters }
    blog
    user
  end
end
