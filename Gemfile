source 'https://rubygems.org'
ruby "2.1.4"

gem 'eventmachine', '~> 1.2', '>= 1.2.0.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'
# Use postgresql as the database for Active Record
gem 'pg'

# PROCESSES
gem 'foreman', '~> 0.75.0'

# SERVER
gem 'unicorn', '~> 4.8.3'

# HEROKU
gem 'rails_12factor', group: :production
gem 'newrelic_rpm', '~> 3.9.5.251'


# JS
gem 'jquery-rails'
gem 'jquery-turbolinks', '~> 0.2.1'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'


# SCSS
gem 'sass-rails', '~> 4.0.3'
gem 'bourbon', '~> 3.2.1'
gem 'neat', '~> 1.5.1'

# MAPS
gem 'leaflet-rails', '~> 0.7.4'

# TRANSLATIONS
gem 'traco', '~> 3.1.5'

gem 'actionview-encoded_mail_to', '~> 1.0.5'
gem 'acts_as_list', '~> 0.4.0'

group :development do
  gem 'spring'
  gem 'guard-livereload', '~> 2.3.0', require: false
end

group :development, :test do
  gem 'figaro', '~> 1.0.0'
  gem 'pry-byebug'
end