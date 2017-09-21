class Day < ApplicationRecord
  validates :datematch, uniqueness: {message: 'This day is already made'}

  def self.sort_lastest_date
    order('datematch DESC')
  end


  def show_match

  end


end
