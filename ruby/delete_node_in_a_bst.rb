# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} key
# @return {TreeNode}


def delete_node(root, key)
  if root.nil?
    return
  else
    if key == root.val
      # if node does not have left children
      if root.left.nil?
        return root.right
        # if node does not have right children
      elsif root.right.nil?
        return root.left
      end
      # if node has two children
      successor = find_successor(root)
      root.val = successor.val
      root.right = delete_node(root.right, successor.val)
      return root
    end
    if key > root.val
      root.right = delete_node(root.right, key)
    else
      root.left = delete_node(root.left, key)
    end
    return root

  end
end

def find_successor(root)
  cur = root.right
  while !cur.nil? && !cur.left.nil?
    cur = cur.left
  end
  cur
end