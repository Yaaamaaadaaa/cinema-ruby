class Schedule < ApplicationRecord
  belongs_to :movie
  has_many :reservations
  has_many :users, through: :reservations

  validates :theater_number, presence: true
  validates :screening_date, presence: true
end
