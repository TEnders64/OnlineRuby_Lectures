class Human
  attr_accessor :name, :location
  @@human_count = 0

  def initialize name, location
    @name = name
    @location = location
    @@human_count += 1
  end

  def what_human_count
  	@@human_count
  end

  private
	  def talk
	    puts "My name is #{@name}"
	    self
	  end
end
Human.new("Todd","Seattle")
Human.new("Todd","Seattle")
puts Human.new("Todd","Seattle").what_human_count