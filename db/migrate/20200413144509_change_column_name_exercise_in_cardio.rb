class ChangeColumnNameExerciseInCardio < ActiveRecord::Migration[6.0]
  def change
    rename_column :cardios, :exercise, :name
  end
end
