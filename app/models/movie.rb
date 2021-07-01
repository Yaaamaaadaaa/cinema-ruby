class Movie < ApplicationRecord
  has_many :schedules

  validates :title, presence: true, uniqueness: true
  validates :running_time, presence: true
  validates :detail, presence: true
end
