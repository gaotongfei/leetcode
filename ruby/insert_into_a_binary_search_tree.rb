# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} val
# @return {TreeNode}

def insert_into_bst(root, val)
  if root.nil?
    TreeNode.new(val)
  else
    if val > root.val
      if root.right
        insert_into_bst(root.right, val)
      else
        root.right = TreeNode.new(val)
      end
    else
      if root.left
        insert_into_bst(root.left, val)
      else
        root.left = TreeNode.new(val)
      end
    end
    root
  end
end
