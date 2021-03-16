FactoryBot.define do
  factory :task do
    sequence(:title) { |n| "hoge#{n}" }
    content {"content"}
    status { :todo }
    deadline {3.days.from_now}
    association :user
  end
end
