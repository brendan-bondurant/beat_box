require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox.new
  describe "#initialize" do
    it describe "do I have a beat box class" do
      bb = BeatBox.new

      expect(bb).to be_instance_of(BeatBox)
    end

    it describe "does it contain a list?" do
      bb = BeatBox.new
      list = LinkedList.new


      expect(bb.list).to be_instance_of(LinkedList) 
    end

    it describe "is the head = nil?" do
      bb = BeatBox.new
      list = LinkedList.new
      
      expect(bb.list.head).to eq(nil)
      
    end
    
    it describe "can I append something to it?" do
    bb = BeatBox.new
    list = LinkedList.new
    # bb = list

    
    bb.append("deep doo ditt")
  

    expect(bb.list.head.data).to eq("deep")
    end
    
  end