* Why use validations
    - Users are dumb (show gif)

- Different types of validations.  Model level validations are database-agnostic and use the power of ActiveRecord

# snack.rb
```rb
    validates :name, presence: true, uniqueness: {case_sensitive: false}
    validates :price, presence: true, numericality: true
    validates :price, presence: true, numericality: { message: "%{value} seems wrong" }
    # also has %{value} and %{model}
    validates :vegetarian, presence: true, inclusion: { in: ["true", "false"],
        message: " must be true or false" }

```
  - show `snack.errors`; `snack.errors.messages`

  Make something custom: 
  ```rb
   validate :vegetarian_tacos_are_cheap,
 
  def vegetarian_tacos_are_cheap
    if price.present? && vegetarian && price > 10
      errors.add(:price, "can't be more than 10 for a vegetarian taco")
    end
  end
  ```

#snacks_controller.rb
```rb
  def create
    @snack = Snack.new(accepted_params)
    if @snack.save?
      redirect_to snack_path(@snack)
    else
      render :new
    end
  end
```

# edit_form.erb

```rb
<% if @taco.errors %>
    <ul class="error_list">
    <% @taco.errors.full_messages.each do |message| %>
        <li><%= message %></li>
    <% end %>
    </ul>
<% end %>
```

  - can show inline styling and stylesheets
  - bad fields get turned into `field_with_errors`

```rb
.field_with_errors {
    color: red;
    display: inline;
}

.error_list li {
    color: red;
}
```



# Use partials!

`shared/_errors.html.erb`
```rb
<% if new_object.errors %>
    <ul class="error_list">
    <% new_object.errors.full_messages.each do |message| %>
        <li><%= message %></li>
    <% end %>
    </ul>
<% end %>
```

form pages:
```rb
<%= render partial: "shared/errors", locals: {new_object: @retailer} %>
```
