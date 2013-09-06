class CreateBuilders < ActiveRecord::Migration
  def change
    create_table :builders do |t|
      t.integer :exercise_id
      t.integer :training_id

      t.timestamps
    end
  end
end
