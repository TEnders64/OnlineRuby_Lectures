#RAILS MVC
####Topics
- MVC
- Rails MVC
- Gemfile
- Rails Models

####MVC
- Model, View, Controller
- Model handles the DB communication and also a lot of the logic
- Controller handles the workflow and is the traffic cop, sometimes needing to involve a model  
  - Controllers also handle session and rendering views
- Views are the HTML/CSS/JS that have Ruby embedded in them and are interpreted before sent back to the browser

####Rails MVC
- Rails follows a strict MVC and the folder structure is amazing!
- `rails new ProjectName`

####Gemfile
- We can grab useful tools called <b>gems</b> that others have coded up to make our apps easier to develop.  If you've had experience with Python, you know you can install various tools in your virtual environments.  
- It's a good idea to update your Gemfile as soon as you create a new project.

####Rails Models
- Models are the heavy lifters.  Remember 'skinny controllers, thick models'?
- Models are where we establish our relationships and validations, and if you have any Django experience, it will pay off with Rails!
- We'll be dealing with a sqlite database, and later we'll see an ORM called ActiveRecord.
  - Remember: an ORM is just something that sits on top of our database tables to help us query the underlying tables.
- `rails g model Person name:string age:integer` will help us create a table for our database
- Keep the model name singular!

####QUIZ
1. `rails g model Person name:string age:integer` will create what table name?
2. How many fields will be in the table?

####Activity (10 Minutes)
1. Create a new Rails project
2. Create a model (and write down the `rails g` command that created it) in that project that reflects the following table:
3. `rake db:migrate` to migrate your table

|Users|
-----
|id|
|first_name:varchar()|
|last_name:varchar()|
|email:varchar()|
|created_at:datetime|
|updated_at:datetime|

####Rails Console
`rails c` opens up a console that allows us to query our database.  Eventually all the queries we write in this console will move out to our Rails application, but the console is a great place to test queries.

####ActiveRecord ORM
CRUD is easily done in Rails using ActiveRecord
- C `User.create(...)`
- R `User.all`, `User.find(...)` or `User.first`, etc.
- U `User.find(...).update(...)`
- D `User.find(...).destroy`

####Activity (10 minutes)
Take your previous User model and do the following (write down your queries):
1. Create 3 users
2. Update user 1 to have a last name of "Humphries"
3. Verify user 1 had their last name updated
4. Destroy the last user
