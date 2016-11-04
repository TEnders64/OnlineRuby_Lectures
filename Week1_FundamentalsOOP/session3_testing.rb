class Human
  attr_accessor :name
  def initialize name=nil, location=nil
    @name = name
    @location = location
  end
  def talk
    puts "My name is #{@name} from #{@location}"
    self
  end
  def walk
    puts "I'm walking here"
    self
  end
end

h = Human.new("Joy", "Starbucks")
h.talk.talk.walk.talk.talk.walk
