# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def search(nums, target)
  nums = nums.sort()
  return target_include?(nums, target)
end


def target_include?(arr, target)
  low = 0
  high = arr.size - 1
  while low <= high
    mid = (low + high) / 2
    if target == arr[mid]
      return true
    elsif target > arr[mid]
      low = mid + 1
    elsif target < arr[mid]
      high = mid - 1
    end
  end
  return false
end
