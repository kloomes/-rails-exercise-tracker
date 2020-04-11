class CreateCardios < ActiveRecord::Migration[6.0]
  def change
    create_table :cardios do |t|
      t.string :exercise
      t.string :workout
      t.integer :hours
      t.integer :minutes
      t.integer :seconds
      t.float :distance
      t.float :pace
      t.float :speed
      t.integer :avg_hr
      t.integer :max_hr
      t.integer :kcal
      t.text :notes
      t.references :session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
