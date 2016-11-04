# person1 = {name: "Nathaniel"}
# person2 = {:name => "Joy"}
# person3 = {'name' => "Todd"}
# person4 = {'name': 'Kris'}
# puts person1[:name] # Nathaniel
# puts person2[:name] # Joy
# puts person3[:name] # nil
# puts person3['name'] # Todd
# puts person4[:name] # Kris
# puts person4['name'] # nil

# def run_this_for_me
#   yield 5
#   yield 10
#   yield 10*10
# end
#
# run_this_for_me {|val| puts val}
# run_this_for_me {|val| puts "I'm a string but I need some dynamic values: #{val}"}
print Array.ancestors, "\n"
