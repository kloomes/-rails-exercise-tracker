class ChangeSessionsToWorkouts < ActiveRecord::Migration[6.0]
  def change
    rename_table :sessions, :workouts
  end
end
