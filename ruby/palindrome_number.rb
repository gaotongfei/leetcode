# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  str = x.to_s
  i = 0
  j = str.size - 1
  while i <= j
    return false if str[i] != str[j]

    i += 1
    j -= 1
  end
  true
end