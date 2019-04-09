# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
  return 0 if j.empty?
  jewels = Set.new(j.split(''))
  count = 0
  s.split('').each do |stone|
    count += 1 if jewels.include?(stone)
  end
  count
end