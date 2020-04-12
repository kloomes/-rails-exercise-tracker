class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :sessions, :type, :workout_type
  end
end
