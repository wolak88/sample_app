class AddCaloriesToAvatar < ActiveRecord::Migration
  def change
  	add_column :avatars, :calories_needed, :integer
  	add_column :avatars, :fat_needed, :integer
  	add_column :avatars, :carbohydrates_needed, :integer
  	add_column :avatars, :proteins_needed, :integer
  	add_column :avatars, :alcohol_needed, :integer
  end
end
