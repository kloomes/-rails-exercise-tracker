class ChangeColumnNameInExercises < ActiveRecord::Migration[6.0]
  def change
    rename_column :exercises, :session_id, :workout_id
  end
end
