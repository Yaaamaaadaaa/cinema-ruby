class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :schedule

  validates :reserved_seat, presence: true
end
