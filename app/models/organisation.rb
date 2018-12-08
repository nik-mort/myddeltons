class Organisation < ApplicationRecord
  has_many :memberships
  has_many :members, through: :memberships
  def to_s
    name

  end
end
