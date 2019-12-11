# Class Inheritance

- "Everything is an object."  What does that mean?  Where do all the methods on `"hi".methods` come from?
    - All classes inherit from Ruby Object class, which in turn inherit from other more abstract classes that we won't be dealing with

- Define Animal class with Dog and Cat inheriting.  Explain `<` syntax.  Give Animal basic methods like `.walk` and `.speak`.  Demo that new Dog and Cat instances have those methods
    - Vocab:  **Child class, Parent class, Sub class, Super class, inherits from**

- **Override** `.speak` in child classes.

- Refactor to show chain inheritance:  `Animal < Mammal < Dog/Cat`.
    - `cat.class`
    - `cat.class.superclass`
    - `cat.class.ancestors`
    - `is_a?` vs `instance_of?`

- Demo use of `super()` to show how to call original methods

- Build out initialize and show how inheritance can be used there, with `super`.


# Modules  

- Build `Fish < Animal`.  Add `can_swim?` to `Fish` class.  But this is problematic--some animals can swim, but doesn't really fit on `Mammal` class.  Build a module:

```rb
module Swimmable
    def can_swim?
        return true
    end

    def swim
        return "going for a dip"
    end
end
```

- include `Swimmable` in relevant classes.  Show MRO.
- add a second module and give both a `take_a_trip()` method and show that the MRO is in reverse order

- namespacing--used for organization and prevent *naming collisions*:

```rb
module Mammal
  class Dog
  end

  class Cat
  end
end
```

# using class vs instance methods from an inherited module
```rb
module Something

    module InstanceMethods

        def say_hi
            puts "hi"
        end
    end

    module ClassMethods

        def hello
            puts "hello"
        end
    end

end

class Dog < Animal 
    extend Something::ClassMethods
    include Something::InstanceMethods
end
```

# Private vs Public methods

```rb
class Dog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(name, age)
    self.name = name
    self.age = age
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

sparky = Dog.new("Sparky", 4)
sparky.human_years
```
