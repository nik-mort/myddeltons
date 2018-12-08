class Event < ApplicationRecord
  has_many :attendances
  has_many :members, through: :attendances

end
