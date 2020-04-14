class CardiosController < ApplicationController
  def new
    @cardio = Cardio.new
  end

  def create
    @cardio = Cardio.new(cardio_params)
    @cardio[:user_id] = params[:user_id]
    @cardio[:workout_id] = params[:workout_id]
    if @cardio.save
      redirect_to workout_path(params[:workout_id])
    else
      render :new
    end
  end

  private

  def cardio_params
    params.require(:cardio).permit(:name, :cardio_type, :pace, :hours, :minutes, :seconds, :distance, :speed, :avg_hr, :max_hr, :kcal, :notes, :user_id, :workout_id)
  end
end
