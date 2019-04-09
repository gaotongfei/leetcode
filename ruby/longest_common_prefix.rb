# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if strs.size == 0

  i = 0
  jump_out = false

  while !jump_out
    # require 'pry-byebug';binding.pry
    current = ''
    strs.each do |str|
      # require 'pry-byebug';binding.pry
      if str[i].nil?
        jump_out = true
        break
      else
        if current == ''
          current = str[i]
        elsif current == str[i]
        else
          jump_out = true
          break
        end
      end
    end
    i += 1
  end

  if i - 1 == 0
    return ""
  else
    strs[0][0..i - 2]
  end
end