# build a method such that the following happens

# a = [1, 10, 99, -4, 0, 18]
# btree_sort(a)  => [-4, 0, 1, 10, 18, 99]

# 1. The method you implement will take in an array, build a tree from the array.
# 2. Then go through the tree left to right to produce a new array that is sorted.


class BinaryTree

	attr_accessor :payload,:left,:right

	def initialize(payload,left,right)
		@payload = payload
		@left = left
		@right = right
	end
	def to_s #print triggers to_s
		"hello"
	end

end

#checks if a node with data exists in the binary tree
														#in binary depth inorder traversal

def depth_search(root,data)
	return false unless root
	return true if root.payload == data

	if data <= root.payload
		return depth_search(root.left,data)
	else
		return depth_search(root.right,data)
	end

end

# Will make its 1st return when the last left node has been reached
# Will then return all the right nodes once all the left node has been reached
def inorder_traversal(root,data=[])

	return if root.nil?
	inorder_traversal(root.left,data)
	print root.payload.to_s + " "
	inorder_traversal(root.right,data)

end


# Creates a tree recursively
def create_tree(root,value)

  puts root.inspect
	return BinaryTree.new(value,nil,nil) unless root

	if value <= root.payload
		root.left   = create_tree(root.left,value)
	else
		root.right  = create_tree(root.right,value)
	end

	return root

end

#
def create_binary_tree_print_inorder_traversal(*data)

	root = nil

	while data.any?
		root = create_tree(root, data.shift)
	end

	inorder_traversal(root)

end

ten      = BinaryTree.new(10,nil,nil)
fourteen = BinaryTree.new(14,ten,nil)
one 		 = BinaryTree.new(1,nil,nil)
six 		 = BinaryTree.new(6,nil,nil)

nine     = BinaryTree.new(9,nil,fourteen)
four     = BinaryTree.new(4,one,six)

root     = BinaryTree.new(7,four,nine)

# create_binary_tree_print_inorder_traversal(7,4,9,1,6,14,10)

puts ""
# inorder_traversal(root)
puts ""
create_binary_tree_print_inorder_traversal(1, 10, 99, -4, 0, 18)
puts ""
# p depth_search(root,10)g
