FactoryBot.define do
  factory :guest_user do
  	name { Faker::Name.name }
  	email { Faker::Internet.email }
  end
end
