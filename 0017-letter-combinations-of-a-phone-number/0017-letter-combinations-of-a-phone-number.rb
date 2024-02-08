# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
    com = {  2 => "abc", 3 => "def", 4 => "ghi", 5 => "jkl", 6 => "mno", 7 => "pqrs", 8 => "tuv", 9 => "wxyz"}
    num = digits.to_i
    if num == 0 || num == 1
        return []
    elsif num < 10
        return com[num].chars
    else
        array = []
        digits.chars.each do |i|
            array << com[i.to_i].chars
        end
      return array.inject(:product).map{ |f| f.join }
    end
end