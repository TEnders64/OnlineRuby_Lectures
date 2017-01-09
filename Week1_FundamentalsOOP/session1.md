#Welcome to Ruby!

####What We're Going To Cover
- Ruby
  - Fundamentals
  - OOP
  - TDD
- Rails
  - Models
  - Controllers & Views
- TDD
  - Rails-Specific
- AJAX & APIs
- Ember (time-permitting)

####Administrative Pieces
- Ruby Online track unlocked?
- Slack (#Ruby-1 & #Ruby-2)
- Classes are M/W 3:30pm, T/Th 5pm

##Ruby Installations
- Reach out to me if you are having problems installing Ruby!

####IRB
- Ruby Interpreter
- Python Shell anyone?

####Ruby Fundamentals
- We still have loops, arrays, dictionaries (hashes), etc.
- <b>EVERYTHING IS AN OBJECT!</b> just like in Python!

####Iterating
```ruby
[1,2,3,4].each {|num| puts num }
```

```ruby
x = [1,2,3,4]
for num in (0...4)
  puts x[num]
end
```

####Hashes
```ruby
person = {name: "Nathaniel"}
puts person[:name]
puts person['name']
puts person.name
```
#####Symbol Notation
- A lot of the time in Ruby, we're going to be using symbol notation.
`person[:name]` :name is a symbol and it's really important to use

####Functions
```ruby
def run how_far
  distance += how_far
end
```

####Yields
```ruby
def run_this_for_me
  yield
end
run_this_for_me { puts 'hey' }
```
