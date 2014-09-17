class CreateMuscleGroupsWorkouts < ActiveRecord::Migration
  def change
    create_table :muscle_groups_workouts, :id => false do |t|
    	t.references :muscle_group 
    	t.references :workout 
    end
  end
  def self.down
  		drop_table :muscle_groups_workouts
  	end
end
