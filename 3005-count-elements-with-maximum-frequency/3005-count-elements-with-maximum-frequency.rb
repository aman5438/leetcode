# @param {Integer[]} nums
# @return {Integer}
def max_frequency_elements(nums)
    freq_count = nums.group_by{ |n| n}.transform_values(&:count)
    max_values = freq_count.values.max
    total = freq_count.select{ |_,count| count == max_values}.values.sum
    return total
end