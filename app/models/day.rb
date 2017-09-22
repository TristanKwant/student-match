class Day < ApplicationRecord
  validates :datematch, uniqueness: {message: 'This day is already made'}

  validate :day_cannot_be_in_past

def day_cannot_be_in_past
  errors.add(:datematch, "You cannot make days in the past") if
    !datematch.blank? and datematch < Date.today.to_s
end

  def self.sort_lastest_date
    order('datematch DESC')
  end

bla

  def show_match

  end


end
