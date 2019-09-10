class ClockIn < ApplicationRecord
  enum clock_type: [ :clock_in, :clock_out ]
  belongs_to :teacher
end
