# @param {String} s
# @return {Boolean}
def is_valid(str)
  stack = []

  str = str.split("")

  while !str.empty?
    p = str.shift

    if ["(", "[", "{"].include?(p)
      stack << p
    else
      topmost_p = stack.last
      if paired?(topmost_p, p)
        stack.pop
      else
        return false
      end
    end
  end

  return stack.empty?
end

def paired?(left, right)
  (left == "(" && right == ")") || (left == "[" && right == "]") || (left == "{" && right == "}")
end