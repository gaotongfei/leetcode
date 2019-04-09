# @param {Integer} n
# @return {String[]}

def generate_parenthesis(n)
  if n.nil? || n == 0
    return []
  end
  result = []

  helper(n, n, "", result)
  return result
end

def helper(left, right, item, result)
  if right < left
    return
  end
  if left == 0 && right == 0
    result << item
  end

  if left > 0
    helper(left - 1, right, item + '(', result)
  end

  if right > 0
    helper(left, right - 1, item + ')', result)
  end
end
