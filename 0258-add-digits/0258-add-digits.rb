# @param {Integer} num
# @return {Integer}
def add_digits(num)
 while(num >= 10)
    n = 0
    num.to_s.chars.each do |i|
      n = n + i.to_i
    end
    num = n
  end
  return num
end