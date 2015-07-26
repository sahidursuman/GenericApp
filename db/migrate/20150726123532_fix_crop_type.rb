class FixCropType < ActiveRecord::Migration
  def change
    rename_column :crops, :type, :name
  end
end
