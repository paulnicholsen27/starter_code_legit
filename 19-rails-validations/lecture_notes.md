FIX THESE NOTES THEY'RE TERRIBLE AND INCOMPLETE

* Why use validations
    - Users are dumb (show gif)

- Different types of validations.  Model level validations are database-agnostic and use the power of ActiveRecord

* What's important about our snacks?
    - shouldn't have duplicate info

# snack.rb

```rb
validates :name, presence: true
  validates :calories, presence: true
  validates :deliciousness, presence: true
```

    - Snack should have name, calories, deliciousness
    - Why bother with `deliciousness` if there's no way to _not_ put in a value in the form based on the dropdown?
        - Answer:  Forms are just one way to add data (console, data migrations, seeds, etc)
    - Show failure in console (works with new, not with create--validations fire on create/update, i.e., when it hits the database)
    - show `snack.errors`; `snack.errors.messages`
    - `belongs_to` is automatically set to `belongs_to :retailer, optional: false`.  Override this by setting to true

    - Demonstrate behavior in browser and necessity for feedback

#snacks_controller.rb
```rb
    if @snack.errors
      render :new
    else
      redirect_to @snack
    end
```

# edit_form.erb

```rb
<% if @snack.errors %>
    <ul>
    <% @snack.errors.full_messages.each do |message| %>
        <li><%= message %></li>
    <% end %>
    </ul>
<% end %>
```

    - can show inline styling and stylesheets

```
.error {
    color: red;
    list-style-type: square;
}
```


# retailer.rb

```rb
class Retailer < ApplicationRecord
    has_many :snacks
    accepts_nested_attributes_for :snacks, reject_if: proc { |attributes| attributes[:name].blank? }

    validates :name, presence: true, uniqueness: true
    validates :year_established, presence: true
    validate :year_established_must_be_valid,
        unless: Proc.new {|a| a.year_established.blank?}
    def year_established_must_be_valid
        if !(self.year_established > 1800 && self.year_established <= Date.today.year)
            errors.add(:year_established, "must be between 1800 and #{Date.today.year}")
        end
    end

end
```

#retailer_controller.rb
```rb
  def create
    @retailer = Retailer.create(strong_params)
    if @retailer.errors
      @retailer.snacks.build
      render :new
    else
      redirect_to retailer_path(retailer)
    end
  end
```

# Use partials!

shared/errors.html.erb

```html
<% if new_object.errors %>
    <ul>
    <% new_object.errors.full_messages.each do |message| %>
        <li class="error"><%= message %></li>
    <% end %>
    </ul>
<% end %>
```

form pages:
```html
<%= render partial: "shared/errors", locals: {new_object: @snack} %>
```
