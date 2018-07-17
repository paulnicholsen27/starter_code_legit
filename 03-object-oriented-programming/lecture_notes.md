```ruby
# what is the data type of x?
# what is the value of x?
x = 3
puts x.class
puts x

# what happens when we run this code?
# what is split and where does it come from?
# how does x know what to do with split?
# what's happening when we run this code?
x = "hello how are you"
x.split
```

```rb
x = 3

# what does message name mean here?
message_name = :+

# what does send do?
# what does the argument to send specify?
# what other arguments does send take?
x.send(message_name, 1) == x + 1

# most operators in Ruby are just messages sent to objects
names = [
  "Ian",
  "Sophie",
  "JJ",
  "Rishi",
  "Johann",
  "Esmery",
  "Terrance"
]
names[0]
names.[](0)
names.send(:[], 0)

# objects complain when they don't know how to respond to messages
# objects complain when they don't know how to execute methods
names.respond_to_undefined_method

# check if an object responds to a message
names.responds_to? message_name
```

- build a Dog hash
- dog = {"name" => "Lord Barkington", "breed" => "Collie"}
- This is fine but `dog` is just a hash.  We can't extend this to have any behavior we might want a dog to do.  Make an empty Dog class.
- `Dog.new`
```
class Dog
    def name=(name)
        @name = name
    end
end
```
- What is the "@"?
    - instance variable
    - accessible throughout the class

- Define getter/setter for name and breed
- Dog.name vs dog.name
- attr_accessors
- custom getter/setters:
```
    def breed
        if @breed
            @breed
        else
            "Mutt"
        end
    end
```

- add initialize method
```
    def initialize(name, breed)
        @name = name
        @breed = breed
    end
```

- make breed optional

- Build out stuff
- add instance methods for bark
- class variable for @@all
- class methods