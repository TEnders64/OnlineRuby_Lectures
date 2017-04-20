#Rails Project: Simpsons App
####Product Backlog
#####High Priority
1. Display Characters
- Show them on index view
2. Add New Characters
3. Hashing a form (improve our skills)

#####Lower Priority
1. Validate Characters
  - Redirect if necessary
  - Show validation errors
    - Flash
2. Form Helpers (Simple Form or Rails built-ins)

Simple Form
```
<%= simple_form_for @product do |f| %>
<%= f.association :category %>
<%= f.input :name %>
<%= f.input :description %>
<%= f.input :pricing %>
<%= f.button :submit %>
<% end %>
```

Form Helper (Rails)
```
<%= form_for @product, url: {action: "create"}, html: {class: "nifty_form"} do |f| %>
  <%= f.text_field :title %>
  <%= f.text_area :body, size: "60x12" %>
  <%= f.submit "Create" %>
<% end %>
```
3. Using Resources
