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

end