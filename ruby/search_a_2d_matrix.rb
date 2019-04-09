# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}

def search_matrix(matrix, target)
  return false if matrix.nil? && !target.nil?
  matrix.each do |arr|
    return false if arr.empty? || arr.nil?
    if target > arr[arr.size - 1]
      next
    elsif target < arr[0]
      return false
    else
      if target_include?(arr, target)
        return true
      else
        next
      end
    end
  end
  return false
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
end
