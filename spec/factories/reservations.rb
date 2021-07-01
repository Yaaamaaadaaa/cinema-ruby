FactoryBot.define do
  factory :reservation do
    sequence(:reserved_seat) { |n| "A#{n}"}
    user_id {1}
    schedule_id {1}
  end
end