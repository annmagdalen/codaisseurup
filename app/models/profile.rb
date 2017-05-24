class Profile < ApplicationRecord

  validates :first_name, :last_name, :bio, presence:true

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.order_by_initial
    order :first_name
  end
end
