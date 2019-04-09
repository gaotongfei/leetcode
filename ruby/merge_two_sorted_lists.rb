# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def merge_two_lists(l1, l2)
  if l1.nil? || l2.nil?
    non_empty_nodes = [l1, l2].compact.first
    return non_empty_nodes
  end
  dummy = ListNode.new(nil)

  tmp = dummy
  while !l1.nil? && !l2.nil?
    if l1.val < l2.val
      tmp.next = ListNode.new(l1.val)
      l1 = l1.next
    else
      tmp.next = ListNode.new(l2.val)
      l2 = l2.next
    end

    tmp = tmp.next
  end

  if l1.nil?
    append_to_node(tmp, l2)
  else
    append_to_node(tmp, l1)
  end
  return dummy.next
end

def append_to_node(receiver, appender)
  while !appender.nil?
    receiver.next = ListNode.new(appender.val)
    appender = appender.next
    receiver = receiver.next
  end

  return receiver
end