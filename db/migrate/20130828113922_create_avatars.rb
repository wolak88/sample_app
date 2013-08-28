class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.integer :age
      t.integer :height
      t.integer :weight
      t.boolean :male
      t.string :activeness
      t.integer :user_id

      t.timestamps
    end
    add_index :avatars, :user_id
  end
end
