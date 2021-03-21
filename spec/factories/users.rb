FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "hoge#{n}.example.com" }
    password {"password"}
    password_confirmation {"password"}
  end
end
