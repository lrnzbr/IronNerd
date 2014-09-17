class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :subtitle
      t.text :equipment
      t.text :instructions
      t.integer :repetitions
      t.integer :sets

      t.timestamps
    end
  end
end
