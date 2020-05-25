# frozen_string_literal: true

require 'bundler/setup'
Bundler.require
require 'rake'
require 'active_record'
require 'pry'

require_relative '../lib/dog'
require_relative 'sql_runner'

DB = ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: './db/dogs.db'
)

DB = ActiveRecord::Base.connection

ActiveRecord::Migration.verbose = false if ENV['ACTIVE_RECORD_ENV'] == 'test'
