FactoryBot.define do
  factory :movie do
    sequence(:title) { |n| "movie#{n}"}
    detail {"詳細"}
    running_time {"2:30"}
  end
end