class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  has_many :registrations, dependent: :destroy

  has_many :guests, through: :registrations, source: :user

  has_many :photos

  validates :name, :start_at, presence:true
  validates :description, presence:true, length:{maximum:500}
  validates :ends_at, presence:true

  # def available?
  #   total_guests = 0
  #   registrations.each do |registration|
  #     total_guests += registration.guest_count
  #   end
  #   capacity > total_guests
  # end

  def bargain?
    price < 30
  end

  def self.order_by_price
    order :price
  end

#  validate :end_after_start?

#  def end_after_start?
#    if ends_at < start_at
#      errors.add(:ends_at, "Must be after start date")
#    end
#  end
end
