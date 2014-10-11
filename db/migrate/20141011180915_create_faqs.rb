class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.string :title_en
      t.string :title_fr
      t.text :content_en
      t.text :content_fr
      t.belongs_to :faq_type, index: true

      t.timestamps
    end
  end
end
