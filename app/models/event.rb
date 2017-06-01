class Event < ApplicationRecord
  belongs_to :user, optional: true
  has_and_belongs_to_many :categories
  has_many :registrations, dependent: :destroy
  has_many :guests, through: :registrations, source: :user
  has_many :photos, dependent: :destroy

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

  def self.alphabetical
    order(name: :asc)
  end

  def self.starts_before_ends_after(arrival, departure)
    where('start_at < ? AND ends_at > ?', arrival, departure)
  end

  def self.start_date(arrival)
    where('start_at = ?', arrival)
  end

  def self.end_date(departure)
    where('ends_at = ?', departure)
  end

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
