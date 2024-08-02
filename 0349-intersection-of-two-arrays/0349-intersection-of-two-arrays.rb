# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
    arr = []
    nums1 = nums1.sort.uniq
    nums2 = nums2.sort.uniq
    nums2.each do |a|
        if nums1.include?(a)
            arr << a
        end
    end
    
    return arr
end