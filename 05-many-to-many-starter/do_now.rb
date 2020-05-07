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

