require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "db/library.db"
)

ActiveRecord::Base.logger = Logger.new(STDOUT)
