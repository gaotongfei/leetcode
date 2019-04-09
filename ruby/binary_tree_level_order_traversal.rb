# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}

def traverse(result, node, level)
  return if node.nil?

  if result[level].nil?
    result[level] = []
  end
  result[level] << node.val if !node&.val.nil?

  traverse(result, node.left, level + 1)
  traverse(result, node.right, level + 1)
end

def level_order(root)
  return [] if root.nil?

  result = []
  level = 0

  traverse(result, root, level)
  return result
end