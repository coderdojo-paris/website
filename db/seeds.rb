# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Venue.delete_all
Event.delete_all
ResourceType.delete_all
Resource.delete_all

valtech = Venue.create(
  name: 'Valtech',
  address: '103 Rue de Grenelle',
  postcode: '75007',
  city: 'Paris',
  country: 'France',
  latitude: 48.856957,
  longitude: 2.319383,
  googlemaps_url: 'https://www.google.fr/maps/place/Valtech/@48.856957,2.319383,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0x798b7c4f64f14322',
  company_url: 'http://www.valtech.fr'
)

event_18oct = Event.create(
  start: "2014-10-18 14:00:00.000000",
  end: "2014-10-18 17:00:00.000000",
  venue: valtech
)

web = ResourceType.create(
  name: 'Web Development'
)

scratch = ResourceType.create(
  name: 'Scratch'
)

starter_kit = Resource.create(
  title: 'HTML Starter Kit',
  description: 'Basic HTML, CSS and JS template files to begin creating a website.',
  resource_url: 'https://github.com/coderdojo-paris/coderdojo-paris.github.io/raw/master/starterkit.zip',
  resource_type: web
)
