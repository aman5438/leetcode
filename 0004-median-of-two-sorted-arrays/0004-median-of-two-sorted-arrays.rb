# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
     sort_array = nums1 + nums2
     sort_array = sort_array.sort
     mid = sort_array.length / 2
     if sort_array.length % 2 == 0
       md = (sort_array[mid - 1] + sort_array[mid] ) / 2.0
     else
        md = sort_array[mid]
     end
     md.to_f
end