require 'bundler/setup'
Bundler.require
require_all "lib"

# setting up the database connection (old way)
# DB = SQLite3::Database.new("db/my_database.db")

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "db/my_database.db"
)

ActiveRecord::Base.logger = Logger.new(STDOUT)
