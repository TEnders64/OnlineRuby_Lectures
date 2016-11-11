def puzzle1
  arr = [3,5,1,2,7,9,8,13,25,32]
  sum = 0
  for i in 0...arr.length
    sum += arr[i]
  end
  puts sum
  newarr = arr.reject {|num| num <= 10}
end

def puzzle2
  names = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
  names.shuffle!
  names.each {|name| puts name}
  newnames = names.reject {|name| name.length <= 5}
end

def puzzle3
  alpha = ("a".."z").to_a
  alpha.shuffle!
  puts alpha.last
  puts "====="
  puts alpha.first
  vowels = ["a", "e", "i", "o", "u"]
  puts "Hey we got a vowel!" if vowels.include?(alpha.first)
end

def puzzle4
  arr = Array.new
  10.times { arr.push(rand(55..100)) }
  arr
end

def puzzle5
  arr = puzzle4()
  arr.sort!
  print arr
  puts "min: #{arr.first} max: #{arr.last}"
end

def puzzle6
  newstr = ""
  5.times {newstr += (65 + rand(26)).chr }
  newstr
end

def puzzle7
  arr = Array.new
  10.times {arr.push(puzzle6)}
  arr
end
