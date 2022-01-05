FactoryBot.define do
  factory :user do
    username { Faker::Internet.user }
    password_digest { Faker::Internet.password }
    uid { '' }
    token { '' }
  end
end
