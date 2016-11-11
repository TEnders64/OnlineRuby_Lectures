class Human
  attr_accessor :strength, :health, :stealth, :intelligence
  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end
  def attack enemy
    enemy.health -= 10 if enemy.class.ancestors.include?(Human)
  end
end
h1 = Human.new
h2 = Human.new
h1.attack(h2)
puts h2.health
# puts h1.strength
class Other < Human
  # attr_accessor :health
  def initialize
    @health = 80
  end
end
o1 = Other.new
o1.attack(h1)
puts o1.health
