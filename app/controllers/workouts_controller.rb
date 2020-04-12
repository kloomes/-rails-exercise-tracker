class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
    @user = current_user
  end

  def create
    @workout = Workout.new(workout_params)
    @workout[:user_id] = current_user.id
    if @workout.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:date, :time, :hours, :minutes, :seconds, :workout_type, :notes)
  end
end
