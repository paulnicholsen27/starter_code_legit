# ActiveRecord Intro

## Objectives

* Practice creating migrations for updating the database structure
* Practice with ActiveRecord::Base instance and class methods
* Perform persistent CRUD actions on one model using ActiveRecord



## Rake

* abstracts away the tasks (often in bash)

## Vocabulary

* "Schema" - the structure of your database, e.g., tables, columns, datatypes (_not_ the actual data)
* "Migration" - a file describing the changes being made to the database schema
* "Seed data" - starter data to begin your app.  Often, but not always, fake data. 
* "CRUD" - the most common database operations:  Create, Read, Update, Delete
* "YAML" - Yet Another Markup Language.  A way to structure data that is language agnostic (not just Ruby)

## Major ActiveRecord Methods (there are many more)
* `.all`
* `.save`
* `.create` (i.e., `.new` + `.save`)
* `.find` (takes an id)
* `.find_by` (takes a key-value pair(s), e.g., `.find_by(color: 'blue'`))
* `.find_or_create_by` (like `find_by` but will create the object if it doesn't exist))
* `.delete`
* `.where`
