# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

class BSTIterator

  # :type root: TreeNode
  attr_accessor :root, :stack
  def initialize(root)
    @root = root
    @stack = []
    push_all_left(@root)
  end

  def push_all_left(node)
    while !node.nil?
      stack.push(node)
      node = node.left
    end
  end

  # @return the next smallest number
  # :rtype: Integer
  def next
    node = stack.pop
    push_all_left(node.right)
    node.val
  end

  # @return whether we have a next smallest number
  # :rtype: Boolean
  def has_next
    !stack.empty?
  end
end

# Your BSTIterator object will be instantiated and called as such:
# obj = BSTIterator.new(root)
# param_1 = obj.next()
# param_2 = obj.has_next()