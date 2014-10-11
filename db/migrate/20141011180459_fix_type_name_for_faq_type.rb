class FixTypeNameForFaqType < ActiveRecord::Migration
  def change
    rename_column :faq_types, :type, :name
  end
end
