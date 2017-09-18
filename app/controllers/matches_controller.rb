class MatchesController < ApplicationController


  def show
    @matches = current_user.matches
  end
end
