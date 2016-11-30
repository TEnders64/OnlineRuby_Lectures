#Rails Layouts
####Layouts
Layouts are great for customizing the look of content.  So far, we've been using the base application layout where
a <body> tag yields whatever we create in our views files.  Pretty vanilla. Let's upgrade.

views > layouts > application.html.erb
```html
<!DOCTYPE html>
<html>
<head>
  <title>UMSI</title>
  <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true %>
  <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
  <%= csrf_meta_tags %>
</head>
<body>
	<%= yield %>
</body>
</html>
```
The idea behind the yield statement in the middle of our application layout can be customized in other layouts or in the same one!

views > layouts > my_fun_layout.html.erb
```html
<!DOCTYPE html>
<html>
<head>
  <%= yield :head_content %>
  <title>UMSI</title>
  <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true %>
  <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
  <%= csrf_meta_tags %>
  <script>
    $(document).ready(function(){
      <%= yield :javascript_stuff %>
    })
  </script>
</head>
<body>
<div class="container">
  <div class="col-sm-6"><%= yield :left_column %></div>
	<div class="col-sm-6"><%= yield :right_column %></div>
</div>
</body>
</html>
```
<b>=================QUIZ===================</b>

Looking at this new layout, what do these additions suggest will happen to the output of the page?

How do we use this new layout we created?
- Fun Note: Controller methods can be told which layouts to use!
```ruby
# inside a controller
def some_method
  render layout: "layout_filename" #found in views > layouts >
end
```

####Activity: User Mgmt System III w/ Layouts
