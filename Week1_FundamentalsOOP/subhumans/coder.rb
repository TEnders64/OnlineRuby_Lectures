require_relative '../human'
class Coder < Human
  def code_like_crazy
    puts "I'm crushing some code!"
    talk
  end
  def talk
    super
    puts "Codespeak"
  end
end
c = Coder.new("Todd")
# c.code_like_crazy
c.talk
