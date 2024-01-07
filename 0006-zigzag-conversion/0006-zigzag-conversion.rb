# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    return s if num_rows == 1 || s.length <= num_rows
    row = Array.new(num_rows, '')
    current_row = 0 
    direction = -1

    s.each_char do |c|
      row[current_row] += c

      direction *= -1 if current_row == 0 || current_row ==  num_rows -1
       
       current_row += direction

    end
    row.join
end