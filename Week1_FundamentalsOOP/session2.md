####More Ruby Fundamentals

####Revisiting Hashes & Hash Rockets
```ruby
person1 = {name: "Nathaniel"}
person2 = {:name => "Joy"}
person3 = {'name' => "Todd"}
person4 = {'name': 'Kris'}
puts person1[:name] # Nathaniel
puts person2[:name] # Joy
puts person3[:name] # nil
puts person3['name'] # Todd
puts person4[:name] # Kris
puts person4['name'] # nil
```
####Revisiting Yields & Blocks
```ruby
def run_this_for_me
  yield 5
  yield 10
  yield 10*10
end

run_this_for_me {|val| puts val}
```

####String Interpolation
```ruby
def run_this_for_me
  yield 5
  yield 10
  yield 10*10
end

run_this_for_me {|val| puts "I'm a string but I need some dynamic values: #{val}"}
```
<b>Note: This only works for double quotes</b>

####Modules & Ancestors
```ruby
puts Array.ancestors
```
- Modules are like a handy toolbox, not necessarily meant for instantiating objects like a class would, but to be available to a class.
- We can create modules and include them anywhere.  For example, the `Enumerable` module is available to arrays and hashes, because we want to be able to loop over those type of objects.
<i>In fun.rb...</i>
```ruby
module FunStuff
  def makeFunHappen
    puts "Making Fun Happen!"
  end
end
```
<i>In funStuffTesting.rb...</i>
```ruby
require_relative 'fun'
class FunFactory
  include FunStuff
end
```

####Activity: Yields
Let's build a Coders_Friend module in a Ruby file with a couple methods:
1) <b>run_this</b> which is intended to take a code block and run it.
2) <b>give_and_take</b> which is intended to take a code block AND pass a value back into the code block.
Let's build a Coder class in a separate Ruby file that is given access to the Coders_Friend module
1) Create a new instance of Coder by doing `Coder.new` and try to run the `run_this` function.
2) Create another instance of Coder and try to execute the `give_and_take` method in a proper fashion.