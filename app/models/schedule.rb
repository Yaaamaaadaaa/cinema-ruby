class Schedule < ApplicationRecord
  belongs_to :movie
  has_many :reservation
end
