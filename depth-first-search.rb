class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end

# The "Leafs" of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])

# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk   = Tree.new(2, [seventh_node, shallow_fifth_node])


def depth_first(tree, target_node)
  # return the current tree if the payload is equal to the target node
  return tree if tree.payload == target_node
  # Loop through each tree's child
  tree.children.each do |child|
    # assign a variable found to depth_first(child, target_node)
    found = depth_first_recursive(child, target_node)
    # return found if found is not nil
    # this causes the method to exit out of a recursive call
    return found if found
  end
  # return nil by default is it's never found
  return nil
end

abs = depth_first_recursive(trunk, 11)
puts abs.inspect
