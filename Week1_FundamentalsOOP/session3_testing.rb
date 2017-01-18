class Human
  
  attr_accessor :name, :location
  
  def initialize name, location
    @name = name
    @location = location
  end

  def who_am_i
    puts "I am #{@name}"
    #hey there's a bunch of code here
    self
  end

  def method50
    puts "METHOD 50"
    self
  end

end
h = Human.new("Todd")
