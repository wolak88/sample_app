class CreateExercisesTrainings < ActiveRecord::Migration
  def change
    create_table :exercises_trainings do |t|
    	t.belongs_to :exercises
    	t.belongs_to :trainings
    end
  end
end
