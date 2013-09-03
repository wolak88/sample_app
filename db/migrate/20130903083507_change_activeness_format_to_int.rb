class ChangeActivenessFormatToInt < ActiveRecord::Migration
  def change
  	change_column :avatars, :activeness, :integer
  end
end
