class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.belongs_to :resource_type, index: true
      t.string :title
      t.text :description
      t.string :resource_url

      t.timestamps
    end
  end
end
