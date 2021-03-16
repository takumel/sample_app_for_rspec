FactoryBot.define do
  factory :task do
    sequence(:title) { |n| "hoge#{n}" }
    status { :todo }
  end
end
