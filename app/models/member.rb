class Member < ApplicationRecord
  has_many :memberships
  has_many :organisations, through: :memberships
  def to_s
    "#{first_name} #{last_name}"

  end
end
