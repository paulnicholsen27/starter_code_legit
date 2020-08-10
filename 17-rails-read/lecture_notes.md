
seeds.rb

```
Taco.destroy_all

def random_boolean
    return rand(0..1.0) > 0.5
end

20.times {Taco.create(name: "#{Faker::Hipster.word} Taco", price: rand(1.0...10.0).round(2), vegetarian: random_boolean)}
```