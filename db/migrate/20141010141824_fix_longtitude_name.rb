class FixLongtitudeName < ActiveRecord::Migration
  def change
    rename_column :venues, :longitude, :longtitude
  end
end
