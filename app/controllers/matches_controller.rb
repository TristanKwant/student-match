class MatchesController < ApplicationController
  before_action :authenticate_user!

  def show
    @matches = current_user.matches
  end
end
