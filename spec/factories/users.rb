FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "hoge#{n}.example.com" }
    password {"hoge"}
    password_confirmation {"hoge"}
  end
end
