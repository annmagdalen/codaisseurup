class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, :start_at, presence:true
  validates :description, presence:true, length:{maximum:500}
  validates :ends_at, presence:true
  validate :end_after_start?

  def end_after_start?
    if ends_at < start_at
      errors.add(:ends_at, "Must be after start date")
    end
  end
end
