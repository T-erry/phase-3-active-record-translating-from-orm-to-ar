# setting up the environment that our application should use
ENV["RACK_ENV"] ||= "development"

# what this does is make Rails automatically discover the Gemfile and then add all the gems defined in it to Ruby's load path.
require 'bundler/setup'
#Bundler provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions that you need.
#ENV["RACK_ENV"]-this is going to install our gems in our application environment
Bundler.require(:default, ENV["RACK_ENV"])
require 'active_record'

require_relative '../lib/dog'

# The ActiveRecord::Base.establish_connection method uses the information in ./config/database.yml in order to connect a Rails application to a database:
ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "./db/test.sqlite3"
)
