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