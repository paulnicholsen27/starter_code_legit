- using rspec and capybara, which allows browser interaction

- delete test folder which uses minitest by default
- add `rspec-rails` to dev/test gemfile
- `rails generate rspec:install`

- Make a test file (must end in _spec)
`require "rails_helper"`

```rb
# The type: :system setting does have a functional purpose. It's what
# triggers RSpec to bring Capybara into the picture when we run the test.
RSpec.describe 'Page loads', type: :system do
    describe 'index page' do 
        it 'shows the right content' do 
            visit tacos_path
            expect(page).to have_content("Index Page")
        end
    end
end
```

- run with `rails spec`

```rb
require 'rails_helper'

RSpec.describe 'Taco', type: :system do

    describe 'pages have correct contact' do
        before(:each) do
            restaurant = Restaurant.create()
            @taco = Taco.create(name: "Yummy Taco", vegetarian: false, price: 5, restaurant: restaurant)
        end

        it 'shows the right content' do 
            visit tacos_path
            expect(page).to have_content("Index Page")
        end

        it 'shows the taco names' do 
            visit tacos_path
            expect(page).to have_content(@taco.name)
        end
    end

    describe 'can use form to create new taco' do 
        before(:each) do 
           ApplicationController.any_instance.stub(:logged_in?).and_return(true)
        end
        it 'loads taco form' do
            visit new_taco_path
            expect(page).to have_content("Create a new taco")
        end

        it 'can submit a taco form and redirect to show page' do
            r = Restaurant.create(name: "My Restaurant")


            visit new_taco_path
        
            fill_in 'taco[name]', with: "My Taco Name"
            fill_in 'taco[price]', with: 5
            choose 'taco_vegetarian_true'
            select "My Restaurant", :from => 'taco[restaurant_id]'
            click_on "Submit"
        
            expect(page).to have_content("My Taco Name")
        end
    end
end
```