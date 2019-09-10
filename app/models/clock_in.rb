class ClockIn < ApplicationRecord
  enum clock_type: [ :clock_in, :clock_out ]
  belongs_to :teacher

  scope :reverse_chronological, -> { order('created_at DESC') }

end
