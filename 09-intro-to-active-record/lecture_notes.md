SETUP:  Copy last lecture 'author.rb' final code into here.  Delete everything in db file.  Copy this repo's Gemfile, README.


- Go over objectives

- Review author-backup created earlier in the week

- Show empty Seed file and put in a few `find_or_create` statements.  

- show updated gem file.
- show .gitignore

- Point out new methods of `find_by_name` and `find_or_create`
- What is Rake? (review)
    - Helps to do tasks
    - For example `rake db:migrate`

- get active record

connect to database
    - in environment file

### old way:
```rb
    require 'sqlite3'
    require 'require_all'
    require_all 'lib'
    # setting up the database connection (old way)
    DB = SQLite3::Database.new("my_database.db")
```

### new way:
```rb
config/database.yml
    development:
      adapter: sqlite3
      database: db/development.sqlite3
      pool: 5
      timeout: 5000
```
config/environment.rb
```rb
    require 'bundler/setup'
    Bundler.require

    ActiveRecord::Base.establish_connection(
      adapter: 'sqlite3',
      database: "db/development.sqlite"
    )

    ActiveRecord::Base.logger = Logger.new(STDOUT)

    require_all 'lib'
```


ActiveRecord::Base  # point out namespacing /module
    - class within AR
    - used to establish connection
    - in labs used to access methods we've been writing in SQL


If Rake -T has not added any extra tasks as expected:
http://api.rubyonrails.org/classes/ActiveRecord/Tasks/DatabaseTasks.html  

## Migrations

- Migration is a way to change _the structure_ of our database.  These Ruby files are tracked by git as normal and can be shared

Make a migration
    - up/down vs change

```rb
rake db:create_migration NAME=create_authors_table
```

```rb
class CreateAuthorsTable < ActiveRecord::Migration

    def change
        create_table :authors do |t|
            t.string :name
        end
    end

end
```

- Create some authors in console
- Move over to seed file with `find_or_create`

- show `.all`, `.find` and `.find_by`.  Show the differences between find and find_by\

add a column
`rake db:create_migration NAME=add_penname_to_authors`

```rb
class AddPenname < ActiveRecord::Migration

    def change
        add_column :authors, :penname, :string
    end

end
```

AR Methods to show: (show docs with lots of other methods)
`.all`
`find`
`find_by` 
`where`
`create`
`find_or_create_by`
`Book.order(rating: :desc)`
`.limit(5)`

