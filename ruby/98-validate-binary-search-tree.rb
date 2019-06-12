# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} root
# @return {Boolean}

def is_valid_bst(root)
  return true if root.nil?

  stack = []
  stack << [root, -Float::INFINITY, Float::INFINITY]

  while !stack.empty?
    node, floor, ceiling = stack.pop

    return false if node.val >= ceiling || node.val <= floor

    stack << [node.right, node.val, ceiling] if node.right
    stack << [node.left, floor , node.val] if node.left
  end

  true
end
