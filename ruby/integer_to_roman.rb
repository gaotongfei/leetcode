# @param {Integer} num
# @return {String}

ARABIC_NUMBERS =[1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000]
ROMAN_NUMBERS = ['I', 'IV', 'V', 'IX', 'X', 'XL', 'L', 'XC', 'C', 'CD', 'D', 'CM', 'M']

def find_closest_largest_number(number, result)
  i = 0
  while i <= ARABIC_NUMBERS.size - 1 && number >= ARABIC_NUMBERS[i]
    i += 1
  end

  result << ROMAN_NUMBERS[i - 1]
  return number - ARABIC_NUMBERS[i - 1]
end

def int_to_roman(number)
  result = []
  while number > 0
    number = find_closest_largest_number(number, result)
  end
  result.join("")
end
