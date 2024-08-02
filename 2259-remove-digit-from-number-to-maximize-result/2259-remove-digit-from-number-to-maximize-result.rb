# @param {String} number
# @param {Character} digit
# @return {String}
def remove_digit(number, digit)
    max_res = ""
    number.chars.each_with_index do |char, index|
        if char == digit
            cand = number[0...index] + number[index+1..-1]
            max_res = cand if cand > max_res
        end
    end
    return max_res
end