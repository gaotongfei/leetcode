# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  new_list = ListNode.new
  return head if head.nil?

  stack = []
  while !head.nil?
    stack << head.val
    head = head.next
  end

  l = new_list
  while !stack.empty?
    l.val = stack.pop
    l.next = ListNode.new
    l = l.next
  end
  new_list
end
