class AddColumnToCardios < ActiveRecord::Migration[6.0]
  def change
    add_column :cardios, :user_id, :integer
    add_column :exercises, :user_id, :integer
  end
end
