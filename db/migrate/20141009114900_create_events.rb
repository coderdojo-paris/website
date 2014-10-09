class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start
      t.datetime :end
      t.belongs_to :venue, index: true

      t.timestamps
    end
  end
end
