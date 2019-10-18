class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

#reverse by mutation
  def reverse_list(list, prior=nil)
    if list 
      next_node = list.next_node
      list.next_node = prior
      reverse_list(next_node, list)
    end
  end

  def print_values(list_node)
    if list_node
      print "#{list_node.value} ---> "
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-----------"

reverse_list(node3)

print_values(node1)