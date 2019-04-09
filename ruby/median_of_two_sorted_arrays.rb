# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  nums = nums1 + nums2
  nums = nums.sort()

  nums_size = nums.size
  if nums_size % 2 == 1
    nums[nums_size / 2]
  else
    mid = nums_size / 2
    (nums[mid - 1] + nums[mid]).to_f / 2
  end
end