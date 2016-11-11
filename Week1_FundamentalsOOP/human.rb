class Human
  attr_accessor :name, :location
  def initialize name, location
    @name = name
    @location = location
  end
  def talk
    puts "My name is #{@name}"
    self
  end
end
