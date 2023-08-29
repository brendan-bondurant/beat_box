Pseudocode notes for BeatBox

1. The first thing to do is set everything up. Make a parent directory that contains two more directories, lib and spec. In the lib directory, create a file called node.rb. In the spec directory, create a file called node_spec.rb. The spec file needs to be able to access `./lib/node`

1. Create a class in the node.rb file. That is done by typing `class BeatBox`. Initialize it with two instance variables: data (telling you what it contains), and next_node (where is it going?). It is important to make sure that those two instance variables are accessible, which will require an attr_accessor. Create a new instance of the node using `Node.new` in it's spec file, and write a couple tests, testing to make sure that everything is created properly

1. In the lib directory, create linked_list.rb and in the spec folder create linked_list_spec.rb. The next few steps are going to involve adding data, altering it, and counting it. the linked_list_spec page needs to be able to access `./lib/node` and `./lib/linked_list`

1. Create a new class in the linked_list file, `class LinkedList`. It will have one instance variable, head, which needs to default to nil. Write a test to make sure that when it's called, the head returns nil. Don't forget the attr_accessor for this class

1. The first method that will be created is append, and it will take in the parameter data, which is a string. In this method, it will be important to use self.head to ensure that this linked list is being used. Write a few tests to make sure that append adds the new string to data, but next_node is still returning nil.

1. The next method created is count. A test needs to be written to make sure that count returns the correct number. Count should return 0 if the head = nil, or add 1 for every node that comes up in the list. 

1. Create a method that returns that data as a string. Don't make this over complicated.

1. The append method is going to need to be updated so the data is put into a new node if the list is not currently emptied. It is a good idea to make a separate method that will check if the head is nil to make everything a little cleaner. If the head is empty, the data goes there. If it isn't, then a new node is created and added onto the tail. Consider making a method to identify whether or not it is the last node. 

1. Test to make sure that the count method works if more than one piece of data is appended. 