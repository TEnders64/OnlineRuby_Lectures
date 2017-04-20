#RAILS MVC
####Relationships!
We can set up relationships amongst models
`rails g model User name:string`
`rails g model Blog title:string user:references`
What relationship can we assume from these two models?

####Updating our Model Files!
app > models > blog.rb
```ruby
class Blog < ...
  belongs_to :user # this was done for us!
end
```

app > models > user.rb
```ruby
class User < ...
  # What do we need to do here?
end
```

####Activity! March Movie Madness!
Let's build an application that helps people keep track of their favorite movies.
