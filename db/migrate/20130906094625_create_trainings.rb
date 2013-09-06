class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :name
      t.string :description
      t.float :overall_difficulty

      t.timestamps
    end
  end
end
