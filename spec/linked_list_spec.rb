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

    it "will append plop" do
      list = LinkedList.new
      list.append("plop")
    
      expect(list).to be_instance_of LinkedList
      expect(list.head.data).to eq("plop")
      expect(list.to_string).to eq("plop")
    end

    it "will append suu" do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
    
      expect(list).to be_instance_of LinkedList
      expect(list.head.data).to eq("plop")
      expect(list.to_string).to eq("plop suu")
    end
  end

  describe "prepend" do
    it "will add nodes to the beginning of the list" do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")
  

      expect(list.head.data).to eq("dop")
      expect(list.to_string).to eq("dop plop suu")
      expect(list.count).to eq 3
    end
  end

  describe "insert" do
    it "will insert nodes at a specific location" do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      list.insert(1, "woo")

      expect(list.to_string).to eq("dop woo plop suu")
    end
  end
  
  describe "find" do
    it "1st parameter indicates 2nd positon to return and second specifies how many to return (only 1 return)" do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.to_string).to eq("deep woo shi shu blop")
      expect(list.find(2, 1)).to eq("shi")

    
    end

    
      it "1st parameter indicates 2nd positon to return and second specifies how many to return (multiple return)" do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")


      expect(list.find(1, 2)).to eq("woo shi")

      expect(list.find(1, 3)).to eq("woo shi shu")
    end
  end
end