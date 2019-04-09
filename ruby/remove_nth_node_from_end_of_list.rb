# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}

def remove_nth_from_end(head, n)
  dummy = ListNode.new(nil)
  dummy.next = head

  list_size = get_size_of_list_node(dummy)

  removing_nth = list_size - n + 1

  return nil if list_size == 1

  # tmp_node is before the node that needs to be removed
  tmp_node = dummy
  if list_size != 1
    (1..(removing_nth - 1)).each do |i|
      tmp_node = tmp_node.next
    end
  end

  tmp_node.next = tmp_node.next.next

  return dummy.next
end

def get_size_of_list_node(head)
  count = 0

  node = head
  while node.next != nil
    count += 1
    node = node.next
  end

  count
end
