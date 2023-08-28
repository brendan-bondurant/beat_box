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
    bb.append("deep doo ditt")
    bb.append("woo hoo shu")

    expect(bb.list.head.data).to eq("deep")
    expect(bb.list.head.next_node.data).to eq("doo")
    end
  end

  describe "#count" do
    it describe "can I count what has been added to it" do
    
    bb = BeatBox.new
    list = LinkedList.new
    bb.append("deep doo ditt")
    bb.append("woo hoo shu")
# require 'pry'; binding.pry

  
    expect(bb.count).to eq 6
    end
    
    it describe "make it play" do
      bb = BeatBox.new
      list = LinkedList.new
      bb.append("deep doo ditt woo hoo shu")
      
      
      expect(bb.count).to eq 6
    end


  end