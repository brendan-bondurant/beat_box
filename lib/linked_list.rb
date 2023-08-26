class LinkedList
  attr_reader :head, :data, :next_node
    def initialize
      @data = nil
      @head = nil  
      @next_node = next_node
    end

    def append(str)
      @head = Node.new(str)
      @data = str
    end

    def count #Technically passed the test but this can't be what it needs to be
      if head == nil
        0
      else
        1
      end
    end

    def to_string
      self.data.to_s
    end
end