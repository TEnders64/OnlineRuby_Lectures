class Human
  def initialize name, location="Fargo"
    @name = name
    @location = location
  end
  protected
  def talk
    puts "My name is #{@name}"
    self
  end
end
