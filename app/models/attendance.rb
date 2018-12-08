class Attendance < ApplicationRecord
  belongs_to :member
  belongs_to :events
end
