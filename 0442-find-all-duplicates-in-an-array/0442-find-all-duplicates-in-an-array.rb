# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
   count = Hash.new(0)
   nums.each do |num|
       count[num] += 1
   end
   array = []
   count.keys.each  do |i|
       if count[i] > 1
         array << i
       end
   end
    return array
end