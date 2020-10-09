# One to Many Relationships

## Objectives

* Implement one to many relationship
* Practice passing custom objects as arguments to methods
* Demonstrate single source of truth
* Infer type of method (class or instance) through naming conventions

## Deliverables

* Create a School class. The class should have these methods:
  * `#initialize` which takes a name and address and stores those as properties
  * `#name` returns the School's name
  * `#address` returns the School's address
  * `.all` returns an array of all the Schools
  * `.find_by_name` takes a string of a name and returns the first School with that name
  * `#instructors` that returns an array of Instructor instances
  * `#add_instructor` that takes an Instructor object and associates that Instructor with this School

* Create a Instructor class. The class should have these methods:
  * `#initialize` which takes a name and stores it as a property
  * `Instructor#name` that returns the name of this Instructor
  * `Instructor#school` that returns the School this Instructor works at
  * `Instructor.all` that returns all the Instructors created.
  * `Instructor#school_name` that returns the name of the School this Instructor works at
