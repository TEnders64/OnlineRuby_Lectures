class SLL
  attr_accessor :head
  def initialize
    @head = nil
  end

  def show
    current = @head
    while current
      puts current.data
      current = current.next
    end
  end
end

class SLLNode
  attr_accessor :next, :data
  def initialize val=nil
    @data = val
    @next = nil
  end
end

node1 = SLLNode.new(5)
node2 = SLLNode.new(7)
node1.next = node2
sll1 = SLL.new
sll1.head = node1
sll1.show
