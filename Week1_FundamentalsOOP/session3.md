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
