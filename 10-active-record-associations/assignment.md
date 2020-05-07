After pulling down today's code (remember to `git commit` your own changes first, if you coded along or otherwise made changes in this folder), migrate your database (`rake db:migrate`) and seed with starter data (`rake db:seed`).

Perform the following tasks.  Think about whether they are ActiveRecord (ruby) tasks that should be done inside a pry session (`rake console`) or rake tasks that should be done directly from your console.  Some deliverables might require you to make changes within the Ruby classes we've already defined.

For each question (and _always_) **PLAN A STRATEGY BEFORE TYPING ANYTHING**. Make sure you are _testing_ your code (pry, check the database, puts statements, whatever!) to make sure your code is working.  There should never be a question as to whether or not something works!!!

1.  Create a new hospital named "Starfleet Medical"
2.  Create two new doctors named "Beverly Crusher" and "Bones McCoy" and assign them to work at Starfleet Medical.
3.  Retrieve all doctors who work at Starfleet Medical
4.  Print out _the name_ (string) of the hospital that Beverly Crusher works at.
5.  Reassign Beverly Crusher to work at Sacred Heart.  
6.  Create two new patients:  "Mr Spock" and "James Kirk" and assign them to Dr McCoy _and_ to Dr Crusher.
7.  Print all of Dr McCoy's patients
8.  Add a method to the Doctor class to return an _array_ of _strings_ of the names of their patients.
9.  Add a column to the Doctor table called "specialty" which should be a string.  Assign values for every doctor.
10. Add a method to the Hospital class to return an array of all of the specialties of all the doctors who work at that hospital.

Bonus:
11.  Provide a method on the Hospital class to return all patients who see doctors at that hospital.  