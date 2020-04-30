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