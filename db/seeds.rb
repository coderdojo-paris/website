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
  longtitude: 2.319383,
  googlemaps_url: 'https://www.google.fr/maps/place/Valtech/@48.856957,2.319383,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0x798b7c4f64f14322',
  company_url: 'http://www.valtech.fr'
)

numa = Venue.create(
  name: 'NUMA',
  address: '39 Rue du Caire',
  postcode: '75002',
  city: 'Paris',
  country: 'France',
  latitude: 48.867589,
  longtitude: 2.349631,
  googlemaps_url: 'https://www.google.fr/maps/place/NUMA/@48.867589,2.349631,17z/data=!3m1!4b1!4m2!3m1!1s0x47e66e3c310f7817:0x1715b707d5c6af5e',
  company_url: 'https://www.numa.paris/'
)

event_18oct = Event.create(
  start: "2014-10-18 14:00:00.000000",
  end: "2014-10-18 17:00:00.000000",
  signup_link: "https://www.eventbrite.fr/e/billets-coderdojo-paris-supported-by-valtech-13492930719",
  venue: valtech
)

event_27sept = Event.create(
  start: "2014-09-27 14:00:00.000000",
  end: "2014-09-27 17:00:00.000000",
  venue: valtech
)

event_24may = Event.create(
  start: "2014-05-24 14:00:00.000000",
  end: "2014-05-24 17:00:00.000000",
  venue: valtech
)

event_26april = Event.create(
  start: "2014-04-26 14:00:00.000000",
  end: "2014-04-26 17:00:00.000000",
  venue: valtech
)

event_22march = Event.create(
  start: "2014-03-22 14:00:00.000000",
  end: "2014-03-22 17:00:00.000000",
  venue: numa
)

event_22february = Event.create(
  start: "2014-02-22 14:00:00.000000",
  end: "2014-02-22 17:00:00.000000",
  venue: numa
)

event_18jan = Event.create(
  start: "2014-01-18 14:00:00.000000",
  end: "2014-01-18 17:00:00.000000",
  venue: numa
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
