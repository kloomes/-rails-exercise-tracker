class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.float :weight
      t.float :bf
      t.integer :bmi
      t.float :lean
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
