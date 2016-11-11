a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
names = [a, b, c, d, e]

puts "You got #{names.length} names in your 'names' array"
names.each {|person| puts "The name is #{person[:first_name]} #{person[:last_name]}" }

for i in 0...names.length
  puts "The name is #{names[i][:first_name]}"
end
