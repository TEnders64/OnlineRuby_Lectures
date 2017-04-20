#Rails Models
####Migrations
Let's alter our tables after we've migrated!

####Validations
We can validate our models before saving or updating them

app > models > user.rb
```ruby
class User < ActiveRecord::Base
  has_many :blogs, through: :owners
  has_many :owners

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, presence: true
  validates :first_name, :last_name, length: {minimum: 2}
  validates :email_address, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
```

####Error Messages
