class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end

# End Tree

class Queue
  def initialize
    @queue = []
  end

  def enqueue(node)
    @queue.push(node)
  end

  def dequeue
    @queue.shift()
  end

  def empty?
    @queue.empty?
  end

end

# End Queue

# The Leaves of a Tree
deep_fifth_node = Tree.new(5,  [])
eleventh_node = Tree.new(11 , [])
fourth_node = Tree.new(4, [])


# The branches of a Tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])



# The trunk of the tree
trunk = Tree.new(2, [seventh_node, shallow_fifth_node])

def breadth_first(node, target_value)
  # initialize a brand new instance of a queue
  queue = Queue.new
  # push the current node into the queue stack
  queue.enqueue(node)

  # set an empty array for nodes we've already traversed through
  traverse_list = []
  # set a current node variable to keep track of the node we're on
  current_node = nil

  # set a loop until the queue is empty
  until queue.empty?
    # set the current node to the  very top level node in the queue
    current_node = queue.dequeue
    # we're going to return the current_node.payload if its equal to the target value
    return current_node.inspect if current_node.payload == target_value
    # push the current node to the traversed list if it isnt there yet
    traverse_list << current_node unless traverse_list.include? current_node

    # loop through each of the current nodes child
    current_node.children.each do |child|
      # pop each child from the stack until we run out
      queue.enqueue(child)
    end
  end

  raise "Error: The target node doesn't exist in the tree"
end



puts breadth_first(trunk, 5)
