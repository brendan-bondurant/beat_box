class BeatBox
  attr_accessor :list
  def initialize
    # @list = list
    @list = LinkedList.new
  end
    
  def append(data)
    multiple_nodes = data.split
      multiple_nodes.each do |single_node|
      list.add_node(single_node)
    end
      list
    end

  def count
    return 0 if list.head == nil
    current_node = list.head
    count = 0

    while current_node
      count += 1
      current_node = current_node.next_node
    end
    count
  
  end

  def count_node(node, counter) 
    return counter if @next_node = nil
    count_node(@next_node, counter += 1)
  end
end