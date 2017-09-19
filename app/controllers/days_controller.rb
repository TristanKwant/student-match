class DaysController < ApplicationController
  before_action :authenticate_user!
  def show
    @day = Day.find(params[:id])
    @days = Day.all
  end

  def new
    @day = Day.new
  end

  def create
    @day = day.build(day_params)

    if @day.save
      redirect_to @day, notice: "day created"
    else
      render :show
    end
  end

  private

  def day_params
    params
      .require(:day)
      .permit(:matchdate)
  end
end
