require 'pry'

class School

    attr_accessor :name 
    attr_reader :instructors

    def initialize(name)
        @name = name
        @instructors = []
    end

    def add_instructor(instructor_name)
        @instructors << instructor_name
    end

    def name
        @name.capitalize
    end
end


class Instructor

    attr_accessor :first_name, :last_name

    def initialize(first_name, last_name)
        @first_name, @last_name = first_name, last_name
    end

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

end

flatiron = School.new("flatiron")

paul = Instructor.new("Paul", "Nicholsen")
melanie = Instructor.new("Melany", "MacDonald")
morgan = Instructor.new("Morgan", "VanYperen")

flatiron.add_instructor(paul)
flatiron.add_instructor(melanie)
flatiron.add_instructor(morgan)

binding.pry

puts 'hello'


# @name # directly accessing the variable name
# self.name # calls the method name 