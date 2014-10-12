# Coderdojo website

Built using [Ruby on Rails](http://rubyonrails.org/)

## Prerequisites

You will need the following things properly installed on your computer.

* [Ruby](https://www.ruby-lang.org)
* [Postgres](http://www.postgresql.org/)

## Installation

* `git clone https://github.com/coderdojo-paris/website` this repository
* change into the new directory
* `bundle install`
* copy `application.yml` (not kept in this repository) into the directory `config`
* `rake db:create`
* `rake db:migrate`
* `rake db:seed`

## Running / Development

* `foreman start`
* Visit your app at http://0.0.0.0:5000

## Updating the text

### For individual FAQs, Events and Resources

You can use the admin panel for this just Sign in at the link at the bottom.

### For other translations

You'll need to update the localization files, found in `config/locales` there are `en.yml` & `fr.yml`

To update to the repository your changes

* Make sure you are in the right directory by `git status` you should see the file you've changed

Before you do this check you have the latest version by running

* `git pull origin master`

If everything works OK then try updating the repository

* `git add -A` (adds the file)
* `git commit -m 'Your message here'`
* `git push origin master`

You should then see your changes updated here.