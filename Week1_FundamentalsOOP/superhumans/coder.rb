require_relative '../human'
class Coder < Human
  def code_like_crazy
    puts "I'm crushing some code!"
  end
  def talk
  	super
  	puts "HEY I'M AWESOME AND A SUPERHUMAN"
  end
end
c = Coder.new("Todd", "Seattle")
# c.code_like_crazy
c.talk