- build Restaurant model, migration (name, city).  Add FK to Taco
- Build test data in console first to test before setting up relationships to show error.   `belongs_to :restaurant, optional: true`
- Add seed data, good time to show restaurant.taco_ids

20.times {Taco.create(
    name: "#{Faker::Hipster.word} Taco",
    price: rand(1.0...10.0).round(2),
    vegetarian: random_boolean)}

3.times {Restaurant.create(
    name: Faker::Restaurant.name,    
    city: Faker::Address.city_prefix + Faker::Address.city_suffix)}


first_five_tacos = Taco.pluck(:id)[0..5]
next_five_tacos = Taco.pluck(:id)[6..10]
rest = Taco.pluck(:id)[11..-1]

Restaurant.first.taco_ids = first_five_tacos
Restaurant.second.taco_ids = next_five_tacos
Restaurant.third.taco_ids = rest


- Do assigment1 in small groups

- Add collection_select to create taco.  Show unpermitted param problem

Nested URLs:

```rb
    resources :restaurants
    resources :restaurants do
      resources :tacos, {only: [:index, :show]}
    end
```