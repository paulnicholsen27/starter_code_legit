- Create TacoController and move relevant code over 

- On index page:

```
Filter by vegetarian

<form action="/tacos" method="GET">
    <input type="radio" name="vegetarian" value="true">
    <label for="male">Only Vegetarian</label><br>
    <input type="radio" name="vegetarian" value="false">
    <label for="female">Only Meat</label><br>
    <input type="radio" name="vegetarian" value="all">
    <label for="other">All</label>
    <div>
    <input type="submit">
    </div>
</form>
```
Taco.rb

- Can also code incorrectly by getting Taco.all and then selecting instead of using ActiveRecord methods
```
def self.vegetarian
    Taco.where(vegetarian: true)
end

def self.meat
    Taco.where(vegetarian: false)
end
```

This has a bug as the params is a string not a bool, but good time to demonstrate byebug steps.  
    def index
        if params[:vegetarian] === "all"    
            @tacos = Taco.all
        elsif params[:vegetarian]
            @tacos = Taco.vegetarian
        else
            @tacos = Taco.meat
        end
        # render :index
    end


- Build radio buttons, then labels, then add checked.
```
<%= form_tag tacos_path, method: "GET" do %>

    <%= radio_button_tag 'vegetarian', 'true', params["vegetarian"] == "true" %>
    <%= label_tag 'vegetarian-true', "Vegetarian" %>
    <%= radio_button_tag 'vegetarian', 'false', params["vegetarian"] == "false" %>
    <%= label_tag 'vegetarian-false', "Meat" %>

    <%= radio_button_tag 'vegetarian', 'all', params["vegetarian"] == "all" %>
    <%= label_tag 'vegetarian-true', "All" %>

    <div><%= submit_tag 'Save' %></div>

<% end %>
```
BUG:  Meat is the default, not all (or is this a feature?)


Then build form_for

```
<%= form_for @taco do |f| %>
    <%= f.label :name, "Taco Name" %>
    <%= f.text_field :name %>
    <%= f.label :price, "Price" %>
    <%= f.number_field :price, step: 0.1 %>
    <%= f.label :vegetarian, "Vegetarian?" %>
    <%= f.select :vegetarian, [true, false] %>
    <%= f.submit %>
<% end %>
```