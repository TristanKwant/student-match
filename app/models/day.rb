class Day < ApplicationRecord


  def self.sort_lastest_date
    order('datematch DESC')
  end


  def show_match
    
  end


end
