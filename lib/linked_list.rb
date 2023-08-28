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
      multiple_nodes = data.split
      list = LinkedList.new
      if multiple_nodes.count > 1
        multiple_nodes.each do |single_node|
        list.add_node(single_node)
        # @list << list.add_node(single_node)
        end
        list
      elsif empty?
        self.head = new_node(data)
      else
        last_node(head).next_node = new_node(data)
      end
    end

    def add_node(data)
      new_node = Node.new(data)
      if @head.nil?
        @head = new_node
      else 
        current = @head
        while current.next_node
          current = current.next_node
        end
        current.next_node = new_node
      end
    end
    



    def prepend(data)
      node = new_node(data)
      node.next_node = head
      self.head = node
    end

    def insert(location, data)
      node = new_node(data)
      prior_node = node_at(head, location - 1)
      next_node = node_at(head, location)
      prior_node.next_node = node
      node.next_node = next_node
      return node
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

    def node_at(node, location, counter = 0)
      return node if location == counter
      node_at(node.next_node, location, counter += 1)
    end
    
    def make_node_string(node, data, terminal = nil, counter = 1)
      return concat(data, node) if node.tail? || terminal == counter
      make_node_string(node.next_node, concat(data, node), terminal, counter += 1)
    end
    
    def make_node_string_altered(node, data, terminal = nil, counter = 1)
      return concat_altered(data, node) if node.tail? || terminal == counter
      make_node_string(node.next_node, concat_altered(data, node), terminal, counter += 1)
    end

    def includes?(data, node = head)
      return false if node == nil
      return true if node.data == data
    includes?(data, node.next_node)
    end

    def find(start, count)
      found_node = node_at(head, start)
      make_node_string_altered(found_node, @data, count)
    end

    
    def concat(data, node)
      "#{data} #{node.data}"
    end
    
    def concat_altered(data, node)
      "#{node.data}"
    end

    def to_string
      return "" if empty?
      return "#{head.data}" if head.tail?
      make_node_string(head.next_node, "#{head.data}")
    end

    def pop
      new_tail = node_at(head, count - 2)
      old_tail = new_tail.next_node
      new_tail.next_node = nil
      return old_tail.data

    end
  end
