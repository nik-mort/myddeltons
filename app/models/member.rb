class Member < ApplicationRecord
  has_many :memberships
  has_many :organisations, through: :memberships
  has_many :attendances
  has_many :events, through: :attendances
  def to_s
    "#{first_name} #{last_name}"

  end
end
