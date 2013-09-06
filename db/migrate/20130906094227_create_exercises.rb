class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :description
      t.float :difficulty
      t.float :time
      t.string :imageurl

      t.timestamps
    end
  end
end
