
require 'bundler'

Bundler.setup
Bundler.require

# create an in-memory sqlite3 database
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => ":memory:"
)

# load the schema without output
ActiveRecord::Migration.verbose = false
load File.expand_path('../schema.rb', __FILE__)

# load the models
load File.expand_path('../models.rb', __FILE__)

