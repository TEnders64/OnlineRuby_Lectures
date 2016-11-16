class AppleTree
  attr_accessor :height, :age, :apples
  def initialize
    @height = 0
    @age = 0
    @apples = 0
  end

  def year_gone_by
    @age += 1
    if @age >= 10
      pick_apples
      @height = 200
    elsif @age >= 3
      @apples += 20
      @height += 20
    else
      @height += 20
    end
  end

  def pick_apples
    @apples = 0
  end
end
