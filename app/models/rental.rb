class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validate :start_date, :end_date
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    errors.add(:end_date, "Sorry, the ending of your rental must be after the start date") if end_date < start_date
  end
end
