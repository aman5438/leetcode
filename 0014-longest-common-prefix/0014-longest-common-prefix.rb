# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    return "" if strs.empty?
    prefix = strs.min_by(&:length)
    
    strs.each do |w|
        common_length = [prefix.length, w.length].min
        common_length.times do |i|
          if prefix[i] != w[i]
            prefix = prefix[0...i]
            break
          end
        end
    end
    return prefix
end