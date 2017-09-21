class MatchesController < ApplicationController
  before_action :authenticate_user!

  def show
    @matches = current_user.matches
  end

  def update
    @match.update(match_params)
  end



  private

  def match_params
    params.require(:match).permit(:matchlist)
  end
end
