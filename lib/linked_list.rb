class LinkedList
  attr_reader :head, :data
    def initialize(head = nil)
      @head = head
      @data = data
    end

    def append(str)
      @data = str
    end
end