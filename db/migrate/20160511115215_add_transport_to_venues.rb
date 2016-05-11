class AddTransportToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :transport, :string
  end
end
