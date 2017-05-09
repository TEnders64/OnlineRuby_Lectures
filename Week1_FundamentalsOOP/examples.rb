# def fun x
#     puts x
#     puts "Hello World!"
# end

# fun "Todd"
# x = [1,2,3,4]
# x.each do |num|
#     puts num *= 2
# end

person = {
    name: "Nathaniel",
    age: 21
}
puts person.class.ancestors
puts [1,2,3,4].class.ancestors
puts "name".class.ancestors
# person.each {|k,v| puts k.to_s+": "+v.to_s}

# def run_this_for_me
#   yield
#   yield
#   yield
# end
# run_this_for_me { puts 'hey' }