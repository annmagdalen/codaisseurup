class Event < ApplicationRecord
  belongs_to :user

  validates :name, :start_at, presence:true
  validates :description, presence:true, length:{maximum:500}
  validates :end_at, presence:true
  validate :end_after_start?

  def end_after_start?
    if end_at < start_at
      errors.add :end_at, "Must be after start date"
    end
  end
end
