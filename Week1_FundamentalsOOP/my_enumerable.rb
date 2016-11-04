module MyEnumerable
  def my_each
    for num in self# we need a for loop to iterate over the array
      yield num # executes { |i| puts i }
    end
  end
end
class Array
   include MyEnumerable
end
class Hash
  include MyEnumerable
end
[1,2,3,4].my_each { |i| puts i } #prints 1 2 3 4 in the terminal
{:name => "Todd Enders"}.my_each {|key| puts key}
