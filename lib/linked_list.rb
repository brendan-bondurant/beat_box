class LinkedList
  attr_accessor :head
    def initialize
      @head = nil  
    end



    def last_node(node)
      return node if node.tail?
      last_node(node.next_node)
    end

    def append(data)
      node = Node.new(data)
      if @head == nil
        self.head = node
      else
        last_node(head).next_node = node
      end
    end

    def empty?
      head.nil?
    end

    def new_node(data)
      Node.new(data)
    end

    def count
      return 0 if empty?
      count_node(head, 1)
    end

    def count_node(node, counter) 
      return counter if node.tail?
      count_node(node.next_node, counter += 1)
    end
    
    def make_node_string(node, data)
      return concat(data, node) if node.tail?
      make_node_string(node.next_node, concat(data, node))
    end
    
    def concat(data, node)
      "#{data} #{node.data}"
    end
    
    def to_string
      return "" if empty?
      return "#{head.data}" if head.tail?
      make_node_string(head.next_node, "#{head.data}")
    end




end