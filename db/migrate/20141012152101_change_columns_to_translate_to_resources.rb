class ChangeColumnsToTranslateToResources < ActiveRecord::Migration
  def change
    rename_column :resources, :title, :title_en
    rename_column :resources, :description, :description_en
  end
end
