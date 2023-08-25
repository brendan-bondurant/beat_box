require './lib/node'

RSpec.describe Node do
  it describe '#initialize' do
    node = Node.new('plop')

    expect(node).to be_instance_of(Node)
  end
  
  it describe 'is there data?' do
    node = Node.new('plop')
  
    expect(node.data).to eq('plop')
  end

  it describe 'what is the next node?' do
    node = Node.new('plop')

    expect(node.next_node).to eq(nil)
  end

end