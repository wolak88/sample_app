class ChangeActivnessToInteger < ActiveRecord::Migration
  def change
  	change_column :avatars, :activeness, :integer
  end
end
