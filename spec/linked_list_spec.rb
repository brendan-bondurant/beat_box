require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do 
  describe '#initialize' do
    it describe 'do I have a linked list?' do
      list = LinkedList.new
      
      expect(list).to be_instance_of(LinkedList)
    end
    
    it describe 'does the head equal nil?' do 
      list = LinkedList.new
      
      expect(list.head).to eq(nil)
    end
    
    it describe 'append doop into head' do
      list = LinkedList.new
      list.append('doop')
      
      expect(list.head.data).to eq('doop')
    end

  end
end