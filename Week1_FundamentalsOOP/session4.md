#RUBY OOP

####Inheritance
- The topic of inheritance is what makes OOP great on top of many other things like the DRY principle.
- What if we want more specific humans to represent? Like Coders? Because not all humans can code (but you can!), but all coders are humans.

`human.rb`
```ruby
class Human
  attr_accessor :name, :location
  def initialize name, location
    @name = name
    @location = location
  end
  def talk
    puts "My name is #{@name}"
    self
  end
end
```

`coder.rb`
```ruby
class Coder < Human
  def code_like_crazy
    puts "I'm crushing some code!"
  end
end
```
`class Coder < Human` says we are inheriting everything public from the Human class.  Public?  Do we have to worry about public, private, protected? YES! But that comes later. For now, let's get our Human and Coder classes to actually talk.  Because `coder.rb` has no clue what the `Human` class is or comes from!

`coder.rb` updated!
```ruby
require_relative 'human'
class Coder < Human
  def code_like_crazy
    puts "I'm crushing some code!"
  end
end
```
`require_relative` says 'GO LOOK FOR A RUBY FILE I WANT AND/OR NEED!!!'

Our file structure would have to look like this:
- human.rb
- coder.rb

Quiz...What if our file structure was like this?
- human.rb
- <u>subhumans</u> >>
    - coder.rb

Answer:
`require_relative '../human.rb'`

Okay, let's actually create some coders!
```ruby
require_relative 'human'
class Coder < Human
  def code_like_crazy
    puts "I'm crushing some code!"
  end
end
c = Coder.new
```
What did we get? Errors? I love errors.
- We have to fulfill our parent's initialize method if we don't specify one for our child class!
- `Coder.new` calls up to `Human.initialize` and it expects a name and location (unless we put defaults)

```ruby
require_relative 'human'
class Coder < Human
  def code_like_crazy
    puts "I'm crushing some code!"
  end
end
c = Coder.new("Todd", "Seattle")
```
Sweet! No errors, but what can we do with our coder that's so cool?
- Answer: Everything a `Human` can do!
```ruby
require_relative 'human'
class Coder < Human
  def code_like_crazy
    puts "I'm crushing some code!"
  end
end
c = Coder.new("Todd", "Seattle")
c.talk
```
Is that true though that a `Coder` can do everything a `Human` can?
- What if we said coders should only be seen and not heard?

####Public, Private, Protected... Visibility
- Everything is Public by default in Ruby Classes and is therefore accessible to the outside world  
- Protected is more of a beast, so we'll learn Private and use it moreso than Protectedf
- Private says 'not even my OWN instances can use these methods'

####Private
- Again, private says not even the class' own instances can use these methods!
```ruby
class Human
  attr_accessor :name, :location
  def initialize name, location
    @name = name
    @location = location
  end
  private
  def talk
    puts "My name is #{@name}"
    self
  end
end
h = Human.new("Todd", "Seattle")
h.talk # FAIL!
```
####Protected
Example:
```ruby
class Human
  attr_accessor :name, :location
  def initialize name, location
    @name = name
    @location = location
  end
  protected
  def talk
    puts "My name is #{@name}"
    self
  end
end
```
Anytime an <b>instance</b> of `Coder` tries to call `.talk()`, we'll get an error!
- Can the class `Coder` call `talk()` though? Let's try.
```ruby
require_relative 'human'
class Coder < Human
  def code_like_crazy
    puts "I'm crushing some code!"
    talk
  end
end
c = Coder.new("Todd", "Seattle")
c.code_like_crazy
```
- Yes we can.

####Super???
Super is used when you have child classes with the same method name as a parent method, but you wish to call the parent's method as well.
```ruby
require_relative 'human'
class Coder < Human
  def code_like_crazy
    puts "I'm crushing some code!"
  end
  def talk
    super # Call my equivalent talk method from the parent class!!!
    puts "Codespeak"
  end
end
```
