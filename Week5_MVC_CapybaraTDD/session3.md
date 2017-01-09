#TDD with Rails
####Testing we HAVE done so far
- OOP testing
####What else can we test?
- Routing, Content on Views, Models, Controllers, everything

####Activity: Testing a User Model
1. Create a new rails project.
2. Update your gem file to include `gem 'rspec-rails'` in the :development, :test group
3. Uncomment the `bcrypt` gem as well (this is not necessary for testing but fun nonetheless)
4. Run `bundle install` to include all your gems.
5. Run `rails g rspec:install` to have rspec monitor models and controllers that get created
6. Create a User model `rails g model User name:string email:string password:digest` <- Don't worry about password:digest right now
7. Run `rake db:migrate`
8. Write the tests for these model validations:
  - Name must be present
  - Name must be at least 2 characters in length
  - Email must be valid
  - Email must be unique 
