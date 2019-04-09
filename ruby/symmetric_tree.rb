# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}

def sysmetrix?(p, q)
  return true if (p.nil? && q.nil?)
  return false if (p.nil? && !q.nil?) || (!p.nil? && q.nil?) || (p.val != q.val)
  return true if (p.val == q.val) && (p.left.nil? && p.right.nil? && q.left.nil? && q.right.nil?)
  sysmetrix?(p.left, q.right) && sysmetrix?(p.right, q.left)
end

def is_symmetric(root)
  return true if root.nil? || (root.left.nil? && root.right.nil?)
  sysmetrix?(root.left, root.right)
end