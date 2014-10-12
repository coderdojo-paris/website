# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)

Venue.delete_all
Event.delete_all
ResourceType.delete_all
Resource.delete_all
FaqType.delete_all
Faq.delete_all

valtech = Venue.create(
  name: "Valtech",
  address: "103 Rue de Grenelle",
  postcode: "75007",
  city: "Paris",
  country: "France",
  latitude: 48.856957,
  longtitude: 2.319383,
  googlemaps_url: "https://www.google.fr/maps/place/Valtech/@48.856957,2.319383,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0x798b7c4f64f14322",
  company_url: "http://www.valtech.fr"
)

numa = Venue.create(
  name: "NUMA",
  address: "39 Rue du Caire",
  postcode: "75002",
  city: "Paris",
  country: "France",
  latitude: 48.867589,
  longtitude: 2.349631,
  googlemaps_url: "https://www.google.fr/maps/place/NUMA/@48.867589,2.349631,17z/data=!3m1!4b1!4m2!3m1!1s0x47e66e3c310f7817:0x1715b707d5c6af5e",
  company_url: "https://www.numa.paris/"
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
  name: "Web Development"
)

scratch = ResourceType.create(
  name: "Scratch"
)

starter_kit = Resource.create(
  title: "HTML Starter Kit",
  description: "Basic HTML, CSS and JS template files to begin creating a website.",
  resource_url: "https://github.com/coderdojo-paris/coderdojo-paris.github.io/raw/master/starterkit.zip",
  resource_type: web
)

student = FaqType.create(
  name: "Student"
)

parent = FaqType.create(
  name: "Parent"
)

mentor = FaqType.create(
  name: "Mentor"
)

mentor_kids = Faq.create(
  position: 10,
  title_en: "How many children will there be and what ages?",
  title_fr: "Example Title in French",
  content_en: "In general there are around 30 children, with around half of them in the 8 and 10 age round with some older and some younger",
  content_fr: "Body text in French",
  faq_type: mentor
)

mentor_timing = Faq.create(
  position: 20,
  title_en: "How long does the dojo last?",
  title_fr: "Example Title in French 2",
  content_en: "The actual dojo lasts from 2pm — 5pm, but the ideal is to arrive a little beforehand so that we can organise (around 1pm) and then a little time after to help pack up. Any time you cna give is appreciated though and these are not hard rules.",
  content_fr: "Body text in French 2",
  faq_type: mentor
)

mentor_skills = Faq.create(
  position: 30,
  title_en: "What will I be doing?",
  title_fr: "Example Title in French 3",
  content_en: "There are two main themes, Scratch for the younger children and HTML / CSS & some Javascript for the older children. Help with either is great — alternatively you may have something in particular you would like to teach which is also appreciated.",
  content_fr: "Body text in French 3",
  faq_type: mentor
)

mentor_attitude = Faq.create(
  position: 40,
  title_en: "Do I need to be a programming genius to help?",
  title_fr: "Example Title in French 3",
  content_en: "In a word no — the main thing is to have fun and be enthusiastic. You can also ask the advice of other mentors if something is beyond your level of expertise.",
  content_fr: "Body text in French 3",
  faq_type: mentor
)

mentor_stuff = Faq.create(
  position: 45,
  title_en: "What should I bring?",
  title_fr: "Example Title in French 3",
  content_en: "Most mentors tend to bring a laptop or similar with them, but this isn’t essential. Snacks and drinks are provided.",
  content_fr: "Body text in French 3",
  faq_type: mentor
)

mentor_rules = Faq.create(
  position: 55,
  title_en: "What are the rules?",
  title_fr: "Quelles sont les règles?",
  content_en: "There is only one rule — above all : be cool.",
  content_fr: "Il n'y a qu'une seule règle — avant tout : soyez cool.",
  faq_type: mentor
)

student_age = Faq.create(
  position: 100,
  title_en: "Is there an older or younger age limit for students?",
  title_fr: "Y at-il une limite plus ou moins l’âge pour les étudiants?",
  content_en: "The Dojo is open to all children from 7-17 years. Children under 13 must be accompanied by a parent.",
  content_fr: "Le club est ouvert à tous les jeunes de 7 à 17 ans. Les enfants de moins de 13 ans doivent être accompagnés d’un parent.",
  faq_type: student
)

student_timing = Faq.create(
  position: 120,
  title_en: "How long does the dojo last?",
  title_fr: "Example Title in French 2",
  content_en: "Each session is on a Saturday afternoon from 2pm — 5pm",
  content_fr: "Chaque session aura lieu le samedi après-midi de 14H à 17H",
  faq_type: student
)

student_stuff = Faq.create(
  position: 145,
  title_en: "What should I bring?",
  title_fr: "Example Title in French 3",
  content_en: "All young people should bring with them a laptop (or whatever they have borrowed) computer. Snacks and drinks are provided.",
  content_fr: "Tous les jeunes doivent apporter leur propre ordinateur portable (ou celui qu’ils ont emprunté)",
  faq_type: student
)

student_rules = Faq.create(
  position: 155,
  title_en: "What are the rules?",
  title_fr: "Quelles sont les règles?",
  content_en: "There is only one rule — above all : be cool.",
  content_fr: "Il n'y a qu'une seule règle — avant tout : soyez cool.",
  faq_type: student
)

student_contact = Faq.create(
  position: 160,
  title_en: "I still have some questions, who do I ask?",
  title_fr: "Example Title in French 3",
  content_en: "If you still are unsure about how the dojo works or what you can do to help, feel free to <a href='/contact'>get in touch</a>",
  content_fr: "Body text in French 3",
  faq_type: student
)