#Rails Controllers, Views, & Routes
####The V-C to MVC
We learned about models last week.  Those fancy files that represent our tables in our DB.
Now we can get into the code that gets all the publicity!
- Views again are the HTML files with embedded Ruby on them that get served back to a browser.
- Controllers are the traffic cops handling a lot of requests and depending on the request, performing lots of different things, like rendering views, calling models, or running session and flash.  
  - However, a request doesn't just get sent to a controller automatically...

####Routing
Our `routes.rb` file is a nice lookup for what we can consider a Rails operator.  
<b>Rails Front Desk: </b>"What's your request?"

<b>Browser: </b>"`GET /users/new` please."

<b>Rails Front Desk: </b>"Hang on a second while I look that up in my routes.  Okay, I know where that needs to go.  Hang on while I send your request to the right person, they'll provide what you need momentarily."

config > routes.rb
```ruby
Rails.application.routes.draw do
  get 'users/new' => 'users#new'
end
```

####RESTful Routing
| HTTP Verb | URL | => | Controller | Method |
|---|---|---|---|---|
| GET | 'users/new' | => | users | new |
| POST | 'users' | => | users | create |
| GET | 'users' | => | users | index |
| GET | 'users/:id' | => | users | show |
| GET | 'users/:id/edit' | => | users | edit |
| PATCH | 'users/:id' | => | users | update |
| DELETE | 'users/:id' | => | users | destroy |
---

####Controllers
Controllers are great for handling requests, including models when necessary, handling session and flash messages and also rendering views
- We generate controllers similar to models
`rails g controller Users index new create`

```ruby
UsersControllers < ApplicationController
  def index
  end

  def new
  end

  def create
  end
end
```
The beauty of using `rails g` to create our controllers, is that we get corresponding views created for us at the same time.  What else is great?  If we sent a `GET /users/index` right now, the index method would be ran and the <b>index.html.erb</b> file would be served back to the browser from the <b>app/views/users</b> folder!

####Activity
- Create a new Rails app with one Users controller with only an index and new method
- Have the users index view have a greeting about users
- Have the users new view have a form to create a new user.  Don't worry about where it goes just yet, just put a name and password in the form.
- Try to navigate to 'users/index' and 'users/new' <b>WITHOUT</b> updating your routes file!
  - Did it work? Why or why not?

####Views and Embedded Ruby
Let's say we want to get some data from our backend onto a view file.  We can use instance variables to pass data over to a view.

app > controllers > users_controller.rb
```ruby
UsersControllers < ApplicationController
  def index
    @greeting = "Hello Users!!!"
  end
end
```

app > views > users > index.html.erb
```html
<% if @greeting != nil %>
<h1><%= @greeting %></h1>
<% end %>
```
We didn't have to use the if statement but it is an example of how we can have Ruby expressions embedded in our HTML.  However, <%= %> is like saying `puts` in Ruby, `print` in Python or `echo` in PHP

####Activity
Continuing with the previous activity...
1. Update your index method in your Users controller to store an instance variable with whatever value you want.
2. Use ERB to print the value of that instance variable on the index.html.erb view file!
