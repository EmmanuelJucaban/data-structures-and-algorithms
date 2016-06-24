class LinkedListNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
  
end


def reverse_linked_list(list, previous_node = nil)
  #  current node = 99
  current_node = list.next_node
  #  set the next node of 99 to nil
  list.next_node = previous_node

  #   [nil]  =>  [nil][99]  => [99][37]
  # Return the next node on terminal and without changing behavior
  if current_node
    reverse_linked_list(current_node, list)
  else 
    list
  end
end




# def check_if_infinite(list)
#   # tortoise = list.next_value
#   # hare = list.next_value.next_value

#   20.times do
#   tortoise = list.next_value
#   hare = list.next_value.next_value

#   puts "tortoise", tortoise
#   puts "hare", hare
# end







def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else      
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

# print node3  
reversedlist = reverse_linked_list(node3)

# puts reversedlist.pop()

# print_values(reversedlist)

# puts check_if_infinite(reverelist)

