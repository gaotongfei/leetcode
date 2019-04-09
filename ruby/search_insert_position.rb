# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  low = 0
  high = nums.size - 1
  while low <= high
    mid = (low + high) / 2
    if (nums[mid] == target)
      return mid
    elsif  nums[mid] > target
      high = mid - 1
    else
      low = mid + 1
    end
  end
  return low
end