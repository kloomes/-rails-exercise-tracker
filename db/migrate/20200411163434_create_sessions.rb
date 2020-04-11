class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.date :date
      t.time :time
      t.integer :hours
      t.integer :minutes
      t.integer :seconds
      t.string :type
      t.text :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
