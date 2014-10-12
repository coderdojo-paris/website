class AddFrenchAndButtonsToResources < ActiveRecord::Migration
  def change
    add_column :resources, :title_fr, :string
    add_column :resources, :description_fr, :text
    add_column :resources, :button_en, :string
    add_column :resources, :button_fr, :string
  end
end
