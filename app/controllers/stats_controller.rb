class StatsController < ApplicationController
  def index
    @stats = Stat.where(user_id: current_user)
  end

  def new
    @stat = Stat.new
  end
end
