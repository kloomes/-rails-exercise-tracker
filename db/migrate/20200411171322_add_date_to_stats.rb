class AddDateToStats < ActiveRecord::Migration[6.0]
  def change
    add_column :stats, :date, :date
  end
end
