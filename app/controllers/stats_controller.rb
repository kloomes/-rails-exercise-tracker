class StatsController < ApplicationController
  def index
    @stats = Stat.where(user_id: current_user)
  end

  def new
    @stat = Stat.new
  end

  def create
    @stat = Stat.new(stat_params)
    @stat[:user_id] = current_user.id
    @stat[:lean] = ((100 - @stat.bf) / 100) * @stat.weight
    if @stat.save
      redirect_to stats_path
    else
      render :new
    end
  end

  def destroy
    @stat = Stat.find(params[:id])
    @stat.destroy
    redirect_to stats_path
  end

  def edit
    @stat = Stat.find(params[:id])
  end

  def update
  end

  private

  def stat_params
    params.require(:stat).permit(:date, :weight, :bf, :lean)
  end
end
