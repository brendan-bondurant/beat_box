require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do 
  describe '#initialize' do
    it describe 'do I have a linked list?' do
      list = LinkedList.new
      
      expect(list).to be_instance_of(LinkedList)
    end
  end

  describe '#append' do  
    it describe 'does the head equal nil?' do 
      list = LinkedList.new

      expect(list.head).to eq(nil)
    end
    
    it describe 'append doop into head' do
      list = LinkedList.new
      list.append('doop')

      expect(list.head.data).to eq('doop')     
    end

    it describe 'next node equals nil' do
      list = LinkedList.new
      list.append('doop')
      
      expect(list.head.next_node).to eq(nil)
      expect(list.head).to be_instance_of Node
    end
    
    it describe 'append deep' do #added later in IT1
      list = LinkedList.new
      list.append('doop')
      list.append('deep')
    
      expect(list).to be_instance_of LinkedList
    end
    
    it describe 'append deep into next node' do #added later in IT1
      list = LinkedList.new
      list.append('doop')
      list.append('deep')

 

      expect(list.head.next_node).to be_instance_of Node
    end
  end

  describe "#count" do
    it "tells us if one thing is in the list" do
      list = LinkedList.new
      list.append('doop')
      
      expect(list.count).to eq(1)
    end
    it "tells us if two things are in the list" do
      list = LinkedList.new
      list.append('doop')
      list.append('deep')
      
      expect(list.count).to eq(2)
    end
  end
  
  describe "#to_string" do
    it "generates a string of all the elements in the list, separated by spaces" do
      list = LinkedList.new
      list.append('doop')
      list.append('deep')

    
      expect(list.to_string).to eq("doop deep")      

    end


    it "needs to make sure the string one works so I looked ahead" do
      list = LinkedList.new
      list.append('doop')
      list.append('deep')
      list.append('plop')
      list.append('suu')
      list.append('dop')
      list.append('woo')

    
      expect(list.to_string).to eq("doop deep plop suu dop woo")      

    end
  end
end