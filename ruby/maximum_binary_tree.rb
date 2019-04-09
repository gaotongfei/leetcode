# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}
def construct_maximum_binary_tree(nums)
  if nums.empty?
    return
  else
    max_index = find_max_index(nums)
    root = TreeNode.new(nums[max_index])

    root.left = construct_maximum_binary_tree(
        nums.partition.with_index { |_, index| index < max_index }.first
    )

    root.right = construct_maximum_binary_tree(
        nums.partition.with_index{ |_,index| index > max_index }.first
    )
    return root
  end
end

def find_max_index(nums)
  max = 0
  max_index = 0
  nums.each_with_index do |num, index|
    if num > max
      max = num
      max_index = index
    end
  end
  max_index
end