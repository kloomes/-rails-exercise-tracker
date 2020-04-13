class CardiosController < ApplicationController
  def new
    @cardio = Cardio.new
  end

  def create
    @cardio = Cardio.new(cardio_params)
    @cardio[:user_id] = current_user.id
    @workout = Workout.find(params[:id])
    if @cardio.save
      redirect_to workout_path(params[:id])
    else
      render :new
    end
  end

  private

  def cardio_params
    params.require(:cardio).permit(:cardio_type, :pace, :hours, :minutes, :seconds, :distance, :speed, :avg_hr, :max_hr, :kcal, :notes, :user_id)
  end
end
