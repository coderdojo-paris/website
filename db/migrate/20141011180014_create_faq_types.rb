class CreateFaqTypes < ActiveRecord::Migration
  def change
    create_table :faq_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
