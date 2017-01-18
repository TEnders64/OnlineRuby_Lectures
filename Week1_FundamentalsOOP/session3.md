#RUBY OOP

####OOP
- Object-Oriented Programming
- Let's turn everything into an object so we can pass things along to instances
- Ruby's inherently OOP

####Example
```ruby
class Human
  def initialize name, location
    @name = name
    @location = location
  end
end
```
- `@` is syntax for an instance variable, meaning, if we create a Human by saying `h = Human.new("Todd", "Seattle")` then we would expect `h.name` to give us something.  Does it though?

####Readers, Writers, Accessors, Oh My!
- We can state what instance variables we'd like to be available for read-only, write-only, or both!
```ruby
class Human
  attr_reader :name # or attr_writer, or attr_accessor
  def initialize name, location
    @name = name
    @location = location
  end
end
```

####Methods
- Fancy word for functions belonging to a class
- Fun fact: Methods return things for you.  Whatever gets mentioned last is what gets returned.  We'll see how this works with `self` in particular next.
```ruby
class Human
  attr_reader :name # or attr_writer, or attr_accessor
  def initialize name, location
    @name = name
    @location = location
  end
  def talk
    puts "My name is #{@name}"
  end
end
```

####Selfie Time
- `self` is the key word that allows us to refer to the specific instance we are dealing with.
```ruby
class Human
  attr_reader :name # or attr_writer, or attr_accessor
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
####Group Activity: Class Creation
Create a class Student with the following criteria:
- Have a name, favorite language, and skill level
- Allow the favorite language to be editable but not the name nor the skill level
- If a favorite language isn't given upon instantiation, make Ruby the default (how do we do this?)
- The default skill level should be 100
- Have a method called <b>talk</b> that prints the name of the student like so: "Hello, I'm Todd"
- Have a method called <b>pick_up_stack</b> that takes an argument (which will be a string).  When invoked, print the argument given (which will most likely be something like "Ruby" or "Python") and then increase the skill level by 25
- Set up both the <b>talk</b> and <b>pick_up_stack</b> methods so we can chain them like so: `Student.new(...).talk.pick_up_stack(...)`