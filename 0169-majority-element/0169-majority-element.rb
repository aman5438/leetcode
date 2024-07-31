# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    count = Hash.new(0)

    nums.each do |n|
      count[n] += 1
    end

    keys = count.keys

    keys.each do |k|
      if (nums.size/2) < count[k]
        return k
      end
    end
end