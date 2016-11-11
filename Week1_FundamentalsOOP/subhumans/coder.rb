require_relative '../human'
class Coder < Human
  def code_like_crazy
    puts "I'm crushing some code!"
    talk
  end
  def talk_2
    super
    puts "Codespeak"
  end
end
c = Coder.new("Todd", "Seattle")
c.talk_2
