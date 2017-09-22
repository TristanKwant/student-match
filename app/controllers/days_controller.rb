class DaysController < ApplicationController
  before_action :authenticate_user!
  def show
    @day = Day.find(params[:id])
    @days = Day.all

  end
  def index
  
    @days = Day.all

  end

  def new
    @day = Day.new
  end

  def create

    if Match.first.matchlist.empty?
      match = Match.first
      match.matchlist = match.get_match_list


      todaymatch = match.matchlist.shift
      match.save
      @day = Day.new(day_params)
      @day.todaymatch = todaymatch
      @day.save
    else
      match = Match.first
      # match.matchlist = match.get_match_list
      todaymatch = match.matchlist.shift
      match.save
      @day = Day.new(day_params)
      @day.todaymatch = todaymatch
      @day.save
    end

    if @day.save
      redirect_to @day, notice: "day created"
    else
      render :new
    end
  end

  private

  def day_params
    params.require(:day).permit(:datematch)
  end
end
