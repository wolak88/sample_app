class ChangeActivenessFormatToFloat < ActiveRecord::Migration
  def change
  	change_column :avatars, :activeness, :float
  end
end
