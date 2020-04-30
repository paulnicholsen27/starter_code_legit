- Build M2M w/o join table

```rb
class Restaurant

    def initialize(name)
        @name = name
        @meals = []
    end

    def add_meal(meal)
        self.meals << meal
        meal.restaurants << self
    end

class Meal

    def initialize(name)
        @name = name
        @restaurants = []
    end

    def add_restaurant(restaurant)
        self.restaurants << restaurant
        restaurant.meals << self
    end

end

```

What's wrong with this?  Elicit:  Double data; double methods.  Build out a method for removing a meal. 

What relationship exists between Restaurant and Meal?  M2M Introduce concept of join table.  Build out join table and then refactor code.