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
    return counter if @next_node == nil
    count_node(@next_node, counter += 1)
  end

  def play
    puts `say -r 250 -v Samantha #{beats}`
  end

  def beats
    current_node = list.head
    noise = current_node.data.to_s
    while (current_node = current_node.next_node)
      noise += " " + current_node.data.to_s
    end
    noise
  end
end