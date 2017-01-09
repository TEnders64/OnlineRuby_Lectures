#TDD with Rails
####Capybara
Capybara is great because it can act like a user that tries to...
- navigate through our application
- fill out forms
- click buttons
Capybara allows us to test CSS even!
<b>Make sure to have the Capybara gem in your gemfile under :development, :test</b>
```ruby
group :development, :test do
  gem 'capybara'
  gem 'rspec-rails'
  gem 'byebug'
end
```

####Route Testing
Route testing can be done through the controller_spec files but <b>ideally</b> should be done in a separate `/spec/routing/` folder, still using a <b>controller_spec.rb</b> format for the file.  Somewhat confusing, but really you can't talk routing without controllers.

We'll have to create the following all on our own.  It's not generated for us automatically
`/spec/routing/users_controller_spec.rb`
```ruby
require 'rails_helper'
describe UsersController do
  describe 'Routing' do
    it "routes get / to the index method" do
      expect(:get => "/").to route_to(:controller => "users", :action => "index")
    end
    it "routes post /users to the create method" do
      expect(:post => "/users").to route_to(:controller => "users", :action => "create")
    end
  end
end
```
####Activity: Route Testing (From Platform)

####Feature Testing
Again, Capybara is great for mimicking a visitor's actions on our application.  If we had a form they could fill out, Capybara can do this for us!
- Like with routing, we should create a `features` folder in our spec directory and create new feature spec files.

`/spec/features/users_features_spec.rb`
```ruby
require "rails_helper"
describe "User Index Page" do
  it "should display a new User form" do
    visit "/"
    expect(page).to have_content("Name")
    expect(page).to have_content("Age")
  end
end

feature "User Creation" do
  scenario "where User's name and age are invalid" do
    visit "/"
    fill_in "user[name]", with: ""
    fill_in "user[age]", with: ""
    click_button "Submit"
    expect(page).to have_content("Name can't be blank")
    expect(page).to have_content("Age can't be blank")
  end
end
```
####Activity: Build out a potential corresponding application based off these tests!
