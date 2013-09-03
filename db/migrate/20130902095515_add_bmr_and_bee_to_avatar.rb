class AddBmrAndBeeToAvatar < ActiveRecord::Migration
  def change
    add_column :avatars, :bmr, :integer
    add_column :avatars, :bee, :integer
  end
end
