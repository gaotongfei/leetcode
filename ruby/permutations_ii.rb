# @param {Integer[]} nums
# @return {Integer[][]}
require 'set'

$set_var = Set[]
def permute_unique(nums)
  if nums == nil || nums == []
    return [[]]
  end
  result = []
  helper(nums, [], nums.size, result)
  result
end

def helper(nums, item, size, res)
  if item.size == size
    tmp = item.dup
    if !$set_var.include?(tmp)
      res << tmp
      $set_var.add(tmp)
    end
  else
    nums.each_with_index do |num, index|
      tmp = nums.reject.each_with_index {|item, i| i == index }
      helper(tmp, item << num, size, res)
      item.pop
    end
  end
end