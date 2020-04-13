class ChangeColumnNameInCardio < ActiveRecord::Migration[6.0]
  def change
    rename_column :cardios, :session_id, :workout_id
    rename_column :cardios, :workout, :cardio_type
  end
end
