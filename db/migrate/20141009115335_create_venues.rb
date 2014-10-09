class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :postcode
      t.string :city
      t.string :country
      t.float :latitude
      t.float :longitude
      t.string :googlemaps_url
      t.string :company_url

      t.timestamps
    end
  end
end
