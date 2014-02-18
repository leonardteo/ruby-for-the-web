# Seeds a SQLite3 database
require 'sqlite3'
require_relative 'seed'

Seed.seed_database("blog.rb")
