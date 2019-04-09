# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
  return [] if root.nil?
  result = []

  left = inorder_traversal(root.left)
  right = inorder_traversal(root.right)

  result += left
  result << root.val
  result += right

  result
end