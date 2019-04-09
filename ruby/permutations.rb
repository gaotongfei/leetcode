# @param {Integer[]} nums
# @return {Integer[][]}

def permute(nums)
  if nums == nil || nums == []
    return [[]]
  end
  result = []
  helper(nums, [], nums.size, result)
  result
end

def helper(nums, item, size, res)
  if item.size == size
    res << item.dup
  else
    nums.each do |num|
      helper(nums - [num], item << num, size, res)
      item.pop
    end
  end
end
